package fr.heraut.api.controllers.Announces;

import fr.heraut.api.DTO.AnnouncesCreateDTO;
import fr.heraut.api.DTO.AnnouncesUpdateIsActiveAndIsActiveMultipleDTO;
import fr.heraut.api.POJO.AnnouncesAnimalsType;
import fr.heraut.api.models.Announces;
import fr.heraut.api.services.Annonces.AnnouncesService;
import fr.heraut.api.services.Annonces.QueryParamsAnnounces;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.HashMap;
import java.util.Optional;


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

    /*
    //this working
    @PostMapping
    public ResponseEntity create(@RequestBody Announces announces, Principal principal, Errors errors){
        System.out.println(" -- - - - - -- - - -- - - - -- ");
        System.out.println(" -- - - - - -- - - -- - - - -- ");
        System.out.println(errors);
        System.out.println(" -- - - - - -- - - -- - - - -- ");
        System.out.println(" -- - - - - -- - - -- - - - -- ");


        return this.announcesService.create(announces, principal);
    }*/


    @PostMapping
    public ResponseEntity create(@RequestBody AnnouncesCreateDTO announcesCreateDTO, Principal principal){
        return this.announcesService.create(announcesCreateDTO, principal);
    }


    @GetMapping("/account")
    public ResponseEntity listByUserId(Principal principal){
        return this.announcesService.getAnnouncesByUserId(principal);
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

    @GetMapping("/search")
    public ResponseEntity searchAnnounces(
            @RequestParam(value = "services", required = false, defaultValue = "") String servicesId,
            @RequestParam(value="animals", required = false, defaultValue = "") String animalsTypeId,
            @RequestParam(value = "department", required = false, defaultValue = "") String dept,
            @RequestParam("page") String page){
        return this.announcesService.getAnnouncesBySearchQuery(servicesId,animalsTypeId,dept,page);
    }

    @PutMapping("/status/{announceUuid}")
    public ResponseEntity updateIsActiveAndIsActiveMultiple(
            @RequestBody AnnouncesUpdateIsActiveAndIsActiveMultipleDTO announcesUpdateIsActiveAndIsActiveMultipleDTO,
            @PathVariable(name="announceUuid") String announceUuid,
            Principal principal) {
        return announcesService.updateActiveAndMultipleActive(announcesUpdateIsActiveAndIsActiveMultipleDTO, announceUuid, principal);
    }




}
