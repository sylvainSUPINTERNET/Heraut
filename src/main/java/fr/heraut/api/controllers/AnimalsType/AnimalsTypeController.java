package fr.heraut.api.controllers.AnimalsType;


import fr.heraut.api.services.AnimalsType.AnimalsTypeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/animalsType")
public class AnimalsTypeController {

    AnimalsTypeService animalsTypeService;

    AnimalsTypeController(AnimalsTypeService animalsTypeService) {
        this.animalsTypeService = animalsTypeService;
    }

    @GetMapping
    public ResponseEntity getAll(){
        return animalsTypeService.getAll();
    }

    @GetMapping("/{animalsType_id}")
    public ResponseEntity getByid(@PathVariable(name="animalsType_id") String id){
        return animalsTypeService.findOne(id);
    }

}
