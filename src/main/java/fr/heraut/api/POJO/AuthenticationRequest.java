package fr.heraut.api.POJO;

import java.util.ArrayList;
import java.util.List;

public class AuthenticationRequest {

    private String username;
    private String password;
    private String email;


    AuthenticationRequest() {
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
