package fr.heraut.api.controllers.Services;

import fr.heraut.api.services.Services.ServicesService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/services")
public class ServicesController {

    ServicesService servicesService;

    ServicesController( ServicesService servicesService){
        this.servicesService = servicesService;
    }

    @GetMapping("/{id}")
    public ResponseEntity getService(@PathVariable("id") long id){
        return servicesService.getById(id);
    }

    @GetMapping
    public ResponseEntity getServices(){
        return servicesService.getAll();
    }
}
