package fr.heraut.api.controllers.Announces;

import fr.heraut.api.models.Announces;
import fr.heraut.api.services.Annonces.AnnouncesService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.validation.Valid;



@RestController
@RequestMapping("/v1/announces")
public class AnnouncesController {

    AnnouncesService announcesService;

    AnnouncesController(AnnouncesService announcesService){
        this.announcesService = announcesService;
    }

    @PostMapping
    public ResponseEntity create(@RequestBody @Valid Announces announces){
        return this.announcesService.create(announces);
    }

}
