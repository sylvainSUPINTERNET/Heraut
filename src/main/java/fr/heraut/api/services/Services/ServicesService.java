package fr.heraut.api.services.Services;


import fr.heraut.api.models.Services;
import fr.heraut.api.repositories.ServicesRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;

import java.util.List;
import java.util.Optional;

import static org.springframework.http.ResponseEntity.badRequest;
import static org.springframework.http.ResponseEntity.ok;

@Service
public class ServicesService {

    ServicesRepository servicesRepository;
    GenericError genericError;

    ServicesService(ServicesRepository servicesRepository, GenericError genericError){
        this.servicesRepository = servicesRepository;
        this.genericError = genericError;
    }


    public ResponseEntity getById(Long id){
        Optional services = servicesRepository.findById(id);
        if(services.isPresent()){
            return ok(services);
        } else {
            return badRequest().body(genericError.formatError("SERVICES_BY_ID_NOT_FOUND","FR"));
        }
    }

    public ResponseEntity getAll(){
        List<Services> services = servicesRepository.findAll();

        if(services.isEmpty()){
            return badRequest().body(genericError.formatError("SERVICES_FIND_ALL_EMPTY","FR"));
        } else {
            return ok(services);
        }
    }

}
