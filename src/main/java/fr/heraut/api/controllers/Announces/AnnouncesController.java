package fr.heraut.api.controllers.Announces;

import fr.heraut.api.models.Announces;
import fr.heraut.api.services.Annonces.AnnouncesService;
import fr.heraut.api.services.Annonces.QueryParamsAnnounces;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping
    // we can also use MultiMap (like users list controlelr)
    public String list(QueryParamsAnnounces queryParamsAnnounces){
        int totalPage = 0;
        System.out.println("is that called ?");
        System.out.println("ID >>>>> " + queryParamsAnnounces.getId());
        System.out.println("ZIPCODE >>>>>> " + queryParamsAnnounces.getZipCode());
        System.out.println("PAGE >>>> " + queryParamsAnnounces.getPage());
        ResponseEntity responseEntity = this.announcesService.count();
        if(responseEntity.getStatusCode() == HttpStatus.OK) {
            Object count = responseEntity.getBody();
            totalPage = (int) count;
        }

        if(totalPage == 0){
            return "error no announces yet.";
        } else {
            System.out.println("BODY > " + totalPage );
        }

        return "oK";
    }

}
