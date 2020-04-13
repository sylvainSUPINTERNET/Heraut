package fr.heraut.api.services.Public;


import fr.heraut.api.repositories.AnnouncesRepository;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import static org.springframework.http.ResponseEntity.ok;

@Service
public class PublicService {

    GenericSuccess genericSuccess;
    AnnouncesRepository announcesRepository;

    PublicService(GenericSuccess genericSuccess, AnnouncesRepository announcesRepository){
        this.genericSuccess = genericSuccess;
        this.announcesRepository = announcesRepository;
    }

    public ResponseEntity getLatestAnnounces(){
        return ok(genericSuccess.formatSuccess(announcesRepository.findLatestAnnounces()));
    }
}
