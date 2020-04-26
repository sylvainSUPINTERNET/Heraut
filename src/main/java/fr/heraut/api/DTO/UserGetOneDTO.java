package fr.heraut.api.DTO;


import org.springframework.stereotype.Service;

@Service
public class UserGetOneDTO {

    Long id;
    String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
