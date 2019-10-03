package fr.heraut.api.services.Authentication;


import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.Authentication.Format.RegisterError;
import fr.heraut.api.services.Authentication.Format.RegisterSuccess;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Optional;

@Service
public class RegisterService {

    @Value("${api.role.user}")
    String ROLE_USER;

    private final
    UserRepository userRepository;

    private final
    RegisterSuccess registerSuccess;

    private final RegisterError registerError;


    RegisterService(UserRepository userRepository, RegisterSuccess registerSuccess, RegisterError registerError) {
        this.userRepository = userRepository;
        this.registerSuccess = registerSuccess;
        this.registerError = registerError;
    }


    /**
     * Generate user
     * Check user info send via register path (front) and retrieve the correct HTTP response
     *
     * @param user
     * @return
     */

    public ResponseEntity generateUser(User user) {
        if (user.getPassword() == null || user.getUsername() == null || user.getEmail() == null) {
            return registerError.formatError("AUTHENTICATION_REGISTER_ERROR_MISSING_FIELDS");
        } else {
            if (user.getPassword().isEmpty() || user.getUsername().isEmpty() || user.getEmail().isEmpty()) {
                // return error
                return registerError.formatError("AUTHENTICATION_REGISTER_ERROR_EMPTY_FIELDS");

            } else {
                Optional<User> userWithSameEmail = userRepository.findByEmail(user.getEmail());
                if (userWithSameEmail.isPresent()) {
                    return registerError.formatError("AUTHENTICATION_REGISTER_ERROR_EMAIL_FIELDS_ALREADY_EXIST");
                } else {
                    Optional<User> userWithSameUsername = userRepository.findByUsername(user.getUsername());
                    if (userWithSameUsername.isPresent()) {
                        return registerError.formatError("AUTHENTICATION_REGISTER_ERROR_USERNAME_FIELDS_ALREADY_EXIST");
                    } else {
                        user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
                        user.setRoles(Arrays.asList(this.ROLE_USER));
                        Long id = userRepository
                                .save(user)
                                .getId();

                        User userGenerated = userRepository.findById(id)
                                .orElseThrow(() -> new RuntimeException("User not found : " + id));

                        return registerSuccess.formatSuccess(userGenerated);
                    }
                }
            }
        }

    }
}
