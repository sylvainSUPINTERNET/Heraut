package fr.heraut.api.DTO;

import org.springframework.stereotype.Service;

@Service
public class AnnouncesUpdateIsActiveAndIsActiveMultipleDTO {
    Boolean active;
    Boolean multipleActive;

    AnnouncesUpdateIsActiveAndIsActiveMultipleDTO(){}

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public Boolean getMultipleActive() {
        return multipleActive;
    }

    public void setMultipleActive(Boolean multipleActive) {
        this.multipleActive = multipleActive;
    }
}
