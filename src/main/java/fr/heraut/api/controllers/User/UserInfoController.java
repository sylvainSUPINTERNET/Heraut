package fr.heraut.api.controllers.User;

import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import static java.util.stream.Collectors.toList;
import static org.springframework.http.ResponseEntity.ok;

@RestController()
@RequestMapping("/v1/users")

class UserInfoController {

    UserRepository userRepository;

    UserInfoController(UserRepository userRepository){
        this.userRepository = userRepository;
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

}