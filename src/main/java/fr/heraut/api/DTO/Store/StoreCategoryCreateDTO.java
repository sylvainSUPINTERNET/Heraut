package fr.heraut.api.DTO.Store;

import org.springframework.stereotype.Service;

@Service
public class StoreCategoryCreateDTO {
    String name;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

}
