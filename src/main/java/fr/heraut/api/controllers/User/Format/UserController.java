package fr.heraut.api.controllers.User.Format;


import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.xml.ws.Response;
import java.util.List;

@RestController()
@RequestMapping("/v1/users")
public class UserController {


    UserRepository userRepository;

    GenericError genericError;


    UserController(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    @GetMapping
    public List<User> usersList () {
        // TODO -> faire quelque chose de générique avec pagination + sorting params + error generic + response generic
        return userRepository
                .findAll();
    }




}
