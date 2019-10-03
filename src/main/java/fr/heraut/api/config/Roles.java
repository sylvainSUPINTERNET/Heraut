package fr.heraut.api.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
public class Roles {
    @Value("${api.role.user}")
    String ROLE_USER;
    @Value("${api.role.admin}")
    String ROLE_ADMIN;

    Roles(){ }

    public String getROLE_USER() {
        return ROLE_USER;
    }

    public void setROLE_USER(String ROLE_USER) {
        this.ROLE_USER = ROLE_USER;
    }

    public String getROLE_ADMIN() {
        return ROLE_ADMIN;
    }

    public void setROLE_ADMIN(String ROLE_ADMIN) {
        this.ROLE_ADMIN = ROLE_ADMIN;
    }
}
