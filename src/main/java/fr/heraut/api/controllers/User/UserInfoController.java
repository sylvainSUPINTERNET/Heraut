package fr.heraut.api.controllers.User;

import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import static java.util.stream.Collectors.toList;
import static org.springframework.http.ResponseEntity.ok;

@RestController()
@RequestMapping("/v1/users")

class UserInfoController {

    GenericSuccess genericSuccess;
    GenericError genericError;

    UserRepository userRepository;

    UserInfoController(UserRepository userRepository, GenericError genericError, GenericSuccess genericSuccess){
        this.userRepository = userRepository;
        this.genericError = genericError;
        this.genericSuccess = genericSuccess;
    }

    @GetMapping("/me")
    public ResponseEntity currentUser(@AuthenticationPrincipal UserDetails userDetails){
            String userEmail = userDetails.getUsername();
            Optional<User> user = userRepository.findByEmail(userEmail);
            Map<Object, Object> model = new HashMap<>();

        if(user.isPresent()) {
            model.put("username", userDetails.getUsername()); // ATTENTION username est overide dans models.User pour retourner email et pas username pour matché avec le system d'authentication qui remplace aussi username par email
            model.put("userId", user.get().getId());
            model.put("roles", userDetails.getAuthorities()
                    .stream()
                    .map(a -> ((GrantedAuthority) a).getAuthority())
                    .collect(toList())
            );
            return ok(model);
            } else {
            model.put("message", "User not found");
            model.put("status", HttpStatus.BAD_REQUEST);
                return ResponseEntity.badRequest().body(model);
            }

    }

    @GetMapping("/{userId}")
    public ResponseEntity getOne(@PathVariable(name="userId") long userId){
        Optional<User> user = this.userRepository.findById(userId);
        if(user.isPresent()){
            return genericSuccess.formatSuccess(user.get());
        } else {
            return genericError.formatErrorWithHttpVerb("USER_NOT_FOUND", "FR", HttpStatus.BAD_REQUEST);
        }
    }


}