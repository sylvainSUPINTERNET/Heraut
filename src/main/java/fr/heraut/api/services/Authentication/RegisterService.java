package fr.heraut.api.services.Authentication;


import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.Authentication.Format.RegisterSuccess;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {

    private final
    UserRepository userRepository;

    private final
    RegisterSuccess registerSuccess;




    RegisterService(UserRepository userRepository, RegisterSuccess registerSuccess) {
        this.userRepository = userRepository;
        this.registerSuccess = registerSuccess;
    }


    /**
     * Generate user
     *
     * @param user
     * @return
     */

    public ResponseEntity generateUser(User user) {



        if(user.getPassword().isEmpty()){
            // return error
           // TODO handle error -> https://www.mkyong.com/spring-boot/spring-rest-error-handling-example/
        } else {
            user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        }

        Long id = userRepository
                .save(user)
                .getId();

        User userGenerated = userRepository.findById(id)
                // TODO -> change this nruntimeException by a generic error handle
                .orElseThrow(() -> new RuntimeException("error find by id user : " + id + " User not found."));

        return registerSuccess.formatSuccess(userGenerated);
    }
}
