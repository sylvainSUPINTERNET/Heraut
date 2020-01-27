package fr.heraut.api.DTO;

import org.springframework.stereotype.Service;

@Service
public class AnnouncesAnimalsTypeDTO {

    Long id;
    String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
