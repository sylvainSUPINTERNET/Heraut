package fr.heraut.api.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/public")
public class PublicApiController {


    @GetMapping
    public String getMessage(){
        return "API PUBLIC HERE";
    }

}
