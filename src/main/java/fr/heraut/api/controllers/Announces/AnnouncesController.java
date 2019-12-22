package fr.heraut.api.controllers.Announces;

import fr.heraut.api.POJO.AnnouncesAnimalsType;
import fr.heraut.api.models.Announces;
import fr.heraut.api.services.Annonces.AnnouncesService;
import fr.heraut.api.services.Annonces.QueryParamsAnnounces;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.HashMap;


@RestController
@RequestMapping("/v1/announces")
public class AnnouncesController {

    AnnouncesService announcesService;
    GenericError genericError;
    GenericSuccess genericSuccess;


    AnnouncesController(AnnouncesService announcesService, GenericError genericError, GenericSuccess genericSuccess){
        this.announcesService = announcesService;
        this.genericError = genericError;
        this.genericSuccess = genericSuccess;
    }

    @PostMapping
    public ResponseEntity create(@RequestBody @Valid Announces announces){
        return this.announcesService.create(announces);
    }

    @GetMapping
    // we can also use MultiMap (like users list controlelr)
    public ResponseEntity list(QueryParamsAnnounces queryParamsAnnounces){

        ResponseEntity responseEntity = this.announcesService.count();

        if(responseEntity.getStatusCode() == HttpStatus.OK) {
            Object count = responseEntity.getBody();
        } else {
            return genericError
                    .formatErrorWithHttpVerb("ANNOUNCE_FIND_BY_QUERY_PARAMS","FR",HttpStatus.INTERNAL_SERVER_ERROR);
        }

        //QueryParams

        System.out.println("is that called ?");
        System.out.println("service ID >>>>> " + queryParamsAnnounces.getService());
        System.out.println("animalType ID >>>>> " + queryParamsAnnounces.getAnimal());
        System.out.println("ZIPCODE >>>>>> " + queryParamsAnnounces.getZipCode()); // (name number)
        System.out.println("PAGE >>>> " + queryParamsAnnounces.getPage());

        //TODO change method getAll and make a custom query to deal with every query params


        int page = Integer.parseInt(queryParamsAnnounces.getPage());


        return this
                .announcesService
                .getAll(page);

    }

    @PostMapping("/animalstype/{announceUuid}")
    public ResponseEntity addAnimalsType(@RequestBody AnnouncesAnimalsType announcesAnimalsType, @PathVariable(name="announceUuid") String announceUuid){
        return this.announcesService.addAnimalsType(announcesAnimalsType, announceUuid);
    }


    @GetMapping("/{announceUuid}")
    public ResponseEntity getOne(@PathVariable(name="announceUuid") String announceUuid){
        return this.announcesService.getOne(announceUuid);
    }

}
