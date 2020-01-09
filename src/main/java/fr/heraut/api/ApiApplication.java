package fr.heraut.api;

import fr.heraut.api.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@SpringBootApplication
@EnableSwagger2
public class ApiApplication implements CommandLineRunner {


    @Autowired
    UserRepository users;

    // TODO -> https://www.codementor.io/hantsy/protect-rest-apis-with-spring-security-and-jwt-ms5uu3zd6
    // TODO -> https://www.baeldung.com/role-and-privilege-for-spring-security-registration
    public static void main(String[] args) {
        SpringApplication.run(ApiApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        System.out.println("Update ?");
        System.out.println(" --- ATTENTION : pour le system d'authentication JWT + token spring security (userDetails) username EST l'email st");

    }
}
