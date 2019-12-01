package fr.heraut.api.services.AnimalsType;

import fr.heraut.api.models.AnimalsType;
import fr.heraut.api.models.Equipments;
import fr.heraut.api.repositories.AnimalsTypeRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import static org.springframework.http.ResponseEntity.ok;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class AnimalsTypeService {

    AnimalsTypeRepository animalsTypeRepository;
    GenericError genericError;

    AnimalsTypeService(AnimalsTypeRepository animalsTypeRepository, GenericError genericError) {
        this.animalsTypeRepository = animalsTypeRepository;
        this.genericError = genericError;
    }



    public ResponseEntity getAll(){
        List<AnimalsType> animalsTypes = animalsTypeRepository.findAll();

        if(animalsTypes.isEmpty()){
            return genericError.formatError("ANIMALS_TYPE_EMPTY","FR");
        } else {
            return ok(animalsTypes);
        }
    }


    public ResponseEntity findOne(String id){

        try {
            Long idConverted = Long.parseLong(id);
            Optional<AnimalsType> animalsTypes = animalsTypeRepository.findById(idConverted);
            if(animalsTypes.isPresent()){
                return ok(animalsTypes);
            } else {
                return genericError.formatError("ANIMALS_TYPE_BY_ID","FR");
            }
        } catch(NumberFormatException e){
            return genericError.formatErrorForException(e.getMessage(), e.getCause());
        }

    }

}
