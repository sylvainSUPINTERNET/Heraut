package fr.heraut.api.controllers.Authentication;

import fr.heraut.api.DTO.EmailResetPasswordDTO;
import fr.heraut.api.DTO.UserResetPasswordDTO;
import fr.heraut.api.JWT.JwtTokenProvider;
import fr.heraut.api.POJO.AuthenticationRequest;
import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.Authentication.RegisterService;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;
import javax.validation.constraints.Email;
import java.util.*;

import static org.springframework.http.ResponseEntity.ok;

@RestController
@RequestMapping("/v1/auth")
public class AuthenticationController {

    @Autowired
    private JavaMailSender emailSender;

    GenericSuccess genericSuccess;

    GenericError genericError;

    private final
    AuthenticationManager authenticationManager;

    private final
    UserRepository userRepository;

    private final
    RegisterService registerService;

    private final
    JwtTokenProvider jwtTokenProvider;

    private final
    UserRepository users;

    @Value("${reset.password.tok}")
    String tokRedirect;

    @Value("${spring.mail.username}")
    String noReplyEmail;

    @Value("${reset.app.url}")
    String appUrl;

    public AuthenticationController(
            AuthenticationManager authenticationManager,
            UserRepository userRepository,
            JwtTokenProvider jwtTokenProvider,
            UserRepository users,
            RegisterService registerService,
            GenericError genericError,
            GenericSuccess genericSuccess) {
        this.authenticationManager = authenticationManager;
        this.userRepository = userRepository;
        this.jwtTokenProvider = jwtTokenProvider;
        this.users = users;
        this.registerService = registerService;
        this.genericError = genericError;
        this.genericSuccess = genericSuccess;
    }

    @PostMapping("/login")
    // ATTENTION => username est en fait l'email de l'utilisateur dans l'authentication
    public ResponseEntity signin(@RequestBody AuthenticationRequest data) {

        try {
            String username = data.getEmail();

            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, data.getPassword()));
            String token = jwtTokenProvider.createToken(username, this.users.findByEmail(username).orElseThrow(() -> new UsernameNotFoundException("Username " + username + "not found")).getRoles());

            Map<Object, Object> model = new HashMap<>();
            model.put("email", username);
            model.put("token", token);
            return ok(model);
        } catch (AuthenticationException e) {
            throw new BadCredentialsException("Invalid Email/password supplied");
        }
    }


    @PostMapping("/register")
    public ResponseEntity test(@RequestBody User user) {
        // encode le password
        return registerService.generateUser(user);
    }

    @PostMapping("/reset/email")
    public ResponseEntity sendResetPasswordEmail(@RequestBody EmailResetPasswordDTO emailResetPasswordDTO){
        try {
            MimeMessage message = emailSender.createMimeMessage();
            String toEncode = this.tokRedirect + "_" + emailResetPasswordDTO.getEmailVerify();
            String paramB64 = Base64.getEncoder().encodeToString(toEncode.getBytes());
            String redirectLink = this.appUrl+"/reset/email?tok="+paramB64;
            boolean multipart = true;
            MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
            String htmlMsg = "<h3>Réinitialiser votre mot de passe</h3><br>" +
                    "<a href="+ redirectLink +">Je réinitialise mon mot de passe</a><br>"
                    +"<img src='https://petsbnb.dk/images/hund-og-kat-footer.png'>";
            message.setContent(htmlMsg, "text/html");
            helper.setTo(emailResetPasswordDTO.getEmailVerify());
            helper.setSubject("Petsbnb - mot de passe oublié");
            emailSender.send(message);
            return genericSuccess.formatSuccess(redirectLink);
        } catch (Exception e) {
            return genericError.formatErrorWithHttpVerb("ERROR_SEND_EMAIL","FR",HttpStatus.BAD_REQUEST);
        }
    }

    // Call when user click on the email link and get redirect to the page
    @PutMapping("/reset/password")
    public ResponseEntity updatePassword(@RequestBody UserResetPasswordDTO userResetPasswordDTO) {
        if(userResetPasswordDTO.getNewPassword().equals("") || userResetPasswordDTO.getEmail().equals("")) {
            return genericError.formatErrorWithHttpVerb("MISSING_BODY_RESET_PASSWORD", "FR", HttpStatus.BAD_REQUEST);
        } else {
            Optional<User> user = userRepository.findByEmail(userResetPasswordDTO.getEmail());
            System.out.println(user);

            if(!user.isPresent()) {
                return genericError.formatErrorWithHttpVerb("USER_FOR_RESET_NOT_FOUND","FR", HttpStatus.BAD_REQUEST);
            } else {
                user.get().setPassword(new BCryptPasswordEncoder().encode(userResetPasswordDTO.getNewPassword()));
                userRepository.save(user.get());

                return genericSuccess.formatSuccess(user);
            }
        }

    }

    // When user click on the mail and get redirect and accepted on the page set new password
    @GetMapping("/reset/password")
    public ResponseEntity resetPassword(@RequestParam("tok") String tokenRedirect){
        if(tokenRedirect.equals("")) {
            return this.genericError.formatErrorWithHttpVerb("GET_RESET_PASSWORD", "FR", HttpStatus.BAD_REQUEST);
        } else {
            byte[] byteArray = Base64.getDecoder().decode(tokenRedirect);
            String token = new String(byteArray);

            String emailToVerify = token.substring(tokRedirect.length()+1);

            Optional<User> user = userRepository.findByEmail(emailToVerify);
            if(!user.isPresent()) {
                return genericError.formatErrorWithHttpVerb("USER_FOR_RESET_NOT_FOUND","FR", HttpStatus.BAD_REQUEST);
            } else {
                return genericSuccess.formatSuccess(user);
            }
        }


    }
}