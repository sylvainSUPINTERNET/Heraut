package fr.heraut.api.controllers.Authentication;

import fr.heraut.api.JWT.JwtTokenProvider;
import fr.heraut.api.POJO.AuthenticationRequest;
import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.Authentication.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.transaction.Transactional;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import static org.springframework.http.ResponseEntity.ok;

@RestController
@RequestMapping("/auth")
public class AuthenticationController {

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

    public AuthenticationController(AuthenticationManager authenticationManager, UserRepository userRepository, JwtTokenProvider jwtTokenProvider, UserRepository users, RegisterService registerService) {
        this.authenticationManager = authenticationManager;
        this.userRepository = userRepository;
        this.jwtTokenProvider = jwtTokenProvider;
        this.users = users;
        this.registerService = registerService;
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
}