package fr.heraut.api.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/private")
public class PrivateApiController {

    @GetMapping
    public String getHomePrivate() {
        return "PRIVATE API HERE";
    }
}
