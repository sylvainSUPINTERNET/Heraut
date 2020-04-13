package fr.heraut.api.controllers.Public;

import fr.heraut.api.services.Public.PublicService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;




@RestController
@RequestMapping("/v1/public")
public class PublicController {

    PublicService publicService;


    PublicController(PublicService publicService){
        this.publicService = publicService;
    }


    @GetMapping("/latest")
    public ResponseEntity latest() {
        return this.publicService.getLatestAnnounces();
    }


}