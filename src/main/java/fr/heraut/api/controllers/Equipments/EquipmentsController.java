package fr.heraut.api.controllers.Equipments;


import fr.heraut.api.models.AnimalsType;
import fr.heraut.api.models.Equipments;
import fr.heraut.api.repositories.EquipmentsRepository;
import fr.heraut.api.services.Equipments.EquipmentsService;
import fr.heraut.api.services.ResponseFormat.GenericError;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.server.PathParam;
import java.util.Optional;

import static org.springframework.http.ResponseEntity.ok;

@RestController
@RequestMapping("/v1/equipments")
public class EquipmentsController {

    EquipmentsService equipmentsService;

    EquipmentsController(EquipmentsService equipmentsService){
        this.equipmentsService = equipmentsService;
    }


    @GetMapping("/{id}")
    public ResponseEntity getById(@PathParam("id") String id){
        return equipmentsService.findOne(id);
    }

    @GetMapping
    public ResponseEntity getAll(){
        return equipmentsService.getAll();
    }


}
