package fr.heraut.api.services.Annonces;


import fr.heraut.api.models.Announces;
import fr.heraut.api.repositories.AnnouncesRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Optional;

import static org.springframework.http.ResponseEntity.ok;

@Service
public class AnnouncesService {

    AnnouncesRepository announcesRepository;
    GenericError genericError;

    AnnouncesService(AnnouncesRepository announcesRepository, GenericError genericError){
        this.announcesRepository = announcesRepository;
        this.genericError = genericError;
    }




    public ResponseEntity create(Announces announces){
        announcesRepository
                .save(announces);
         return ok(announces);
    }

    public ResponseEntity count(){
        return ok(announcesRepository.countByActive());
    }

    public ResponseEntity getOne(String announceUuid){
        Optional<Announces> announce = announcesRepository.findByUuid(announceUuid);

        if(announce.isPresent()){
            return ok(announce);
        } else {
            return ResponseEntity.badRequest().body(genericError.formatError("ANNOUNCE_FIND_BY_UUID","FR"));
        }
    }


}
