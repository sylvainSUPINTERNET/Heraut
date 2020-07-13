package fr.heraut.api.services.Media;

import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.Optional;

@Service
public class UserPictureUploaderService {
    UserRepository userRepository;
    GenericSuccess genericSuccess;
    GenericError genericError;


    UserPictureUploaderService(UserRepository userRepository, GenericSuccess genericSuccess, GenericError genericError){
        this.userRepository = userRepository;
        this.genericError = genericError;
        this.genericSuccess = genericSuccess;
    }


    public ResponseEntity upload(String userId, MultipartFile file){
        if(!userId.isEmpty() || !file.isEmpty()) {
            try {
                Optional<User> userOptional = this.userRepository.findById(Long.valueOf(userId));
                if(userOptional.isPresent()) {
                    userOptional.get().setPicture(file.getBytes());
                    this.userRepository.save(userOptional.get());
                    return this.genericSuccess.formatSuccess(userOptional.get());
                } else {
                    return this.genericError.formatErrorWithHttpVerb("UPLOAD_NO_USER","FR",HttpStatus.BAD_REQUEST);
                }

            } catch (Exception e) {
                return this.genericError.formatErrorForException(e.getMessage(), e.getCause());
            }
        } else {
            return genericError.formatErrorWithHttpVerb("UPLOAD_INVALID_BODY_USER","FR", HttpStatus.BAD_REQUEST);
        }
    }
}
