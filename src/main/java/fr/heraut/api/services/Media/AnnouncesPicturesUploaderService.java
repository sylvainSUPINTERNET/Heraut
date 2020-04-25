package fr.heraut.api.services.Media;


import fr.heraut.api.models.Announces;
import fr.heraut.api.repositories.AnnouncesRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.Optional;

@Service
public class AnnouncesPicturesUploaderService {

    AnnouncesRepository announcesRepository;
    GenericSuccess genericSuccess;
    GenericError genericError;


    AnnouncesPicturesUploaderService(AnnouncesRepository announcesRepository, GenericSuccess genericSuccess, GenericError genericError){
        this.announcesRepository = announcesRepository;
        this.genericError = genericError;
        this.genericSuccess = genericSuccess;
    }


    public ResponseEntity upload(String announceId, MultipartFile file){
        if(!announceId.isEmpty() || !file.isEmpty()) {
            try {
                Optional<Announces> announcesOptional = this.announcesRepository.findById(Long.valueOf(announceId));
                if(announcesOptional.isPresent()) {
                    announcesOptional.get().setPicture(file.getBytes());
                    this.announcesRepository.save(announcesOptional.get());
                    return this.genericSuccess.formatSuccess(announcesOptional.get());
                } else {
                    return this.genericError.formatErrorWithHttpVerb("UPLOAD_NO_ANNOUNCE","FR",HttpStatus.BAD_REQUEST);
                }

            } catch (Exception e) {
                return this.genericError.formatErrorForException(e.getMessage(), e.getCause());
            }
        } else {
            return genericError.formatErrorWithHttpVerb("UPLOAD_INVALID_BODY","FR", HttpStatus.BAD_REQUEST);
        }
    }
}
