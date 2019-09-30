package fr.heraut.api.controllers.Example;

import fr.heraut.api.repositories.VehicleRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import static org.springframework.http.ResponseEntity.ok;

@RestController
@RequestMapping("/v1/vehicles")
public class VehicleController {

    private VehicleRepository vehicles;

    public VehicleController(VehicleRepository vehicles) {
        this.vehicles = vehicles;
    }


    @GetMapping("")
    public ResponseEntity all() {
        return ok(this.vehicles.findAll());
    }

}
