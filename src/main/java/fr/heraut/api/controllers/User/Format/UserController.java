package fr.heraut.api.controllers.User.Format;


import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
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
    GenericSuccess genericSuccess;


    UserController(UserRepository userRepository, GenericSuccess genericSuccess, GenericError genericError){
        this.userRepository = userRepository;
        this.genericError = genericError;
        this.genericSuccess = genericSuccess;
    }

    @GetMapping
    public ResponseEntity usersList () {
        return genericSuccess.formatSuccess(userRepository
                .findAll());
    }




}
