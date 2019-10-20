package fr.heraut.api.services.Annonces;


import fr.heraut.api.models.Announces;
import fr.heraut.api.repositories.AnnouncesRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import static org.springframework.http.ResponseEntity.ok;

@Service
public class AnnouncesService {

    AnnouncesRepository announcesRepository;

    AnnouncesService(AnnouncesRepository announcesRepository){
        this.announcesRepository = announcesRepository;
    }


    public ResponseEntity create(Announces announces){
        announcesRepository
                .save(announces);
         return ok(announces);
    }


}
