package fr.heraut.api.services.Equipments;


import fr.heraut.api.models.Equipments;
import fr.heraut.api.repositories.EquipmentsRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

import static org.springframework.http.ResponseEntity.ok;

@Service
public class EquipmentsService {

    EquipmentsRepository equipmentsRepository;
    GenericError genericError;

    EquipmentsService(GenericError genericError, EquipmentsRepository equipmentsRepository){
        this.genericError = genericError;
        this.equipmentsRepository = equipmentsRepository;
    }


    public ResponseEntity findOne(String id){

        try {
            Long idConverted = Long.parseLong(id);
            Optional<Equipments> animalsTypes = equipmentsRepository.findById(idConverted);
            if(animalsTypes.isPresent()){
                return ok(animalsTypes);
            } else {
                return genericError.formatError("EQUIPMENTS_FIND_BY_ID","FR");
            }
        } catch(NumberFormatException e){
            return genericError.formatErrorForException(e.getMessage(), e.getCause());
        }

    }

    public ResponseEntity getAll(){
        List<Equipments> equipments = equipmentsRepository.findAll();
        if(equipments.isEmpty()){
            return ResponseEntity.badRequest().body(genericError.formatError("EQUIPMENTS_FIND_ALL","FR"));
        } else {
            return ok(equipments);
        }
    }

}
