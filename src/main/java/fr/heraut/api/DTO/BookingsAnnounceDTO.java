package fr.heraut.api.DTO;

import org.springframework.stereotype.Service;

@Service
public class BookingsAnnounceDTO {

    String uuid;
    String title;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
