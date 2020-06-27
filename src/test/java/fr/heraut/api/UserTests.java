package fr.heraut.api;

import fr.heraut.api.JWT.JwtTokenProvider;
import fr.heraut.api.controllers.User.Format.UserController;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest
class UserTests {

    @Autowired
    UserController userController;
    @Autowired
    JwtTokenProvider jwtTokenProvider;

    String tokAdmin;
    String tokUser;


    public void setTokens(){
        List<String> rolesAdmin  = new ArrayList<>();
        rolesAdmin.add("ROLE_ADMIN");

        List<String> rolesUser  = new ArrayList<>();
        rolesUser.add("ROLE_USER");

        tokAdmin = this.jwtTokenProvider.createToken("adm@adm.fr", rolesAdmin);
        tokUser = this.jwtTokenProvider.createToken("user@user.fr", rolesUser);
    }

    @BeforeEach
    void beforeAllMethod(){
        this.setTokens();
    }

    @Test
    void contextLoads() {
        System.out.println("Load user test context");

    }

    @Test
    void isController() throws Exception {
        System.out.println("ADMIN TOK : "  + tokAdmin);
        System.out.println("USER TOK : "  + tokUser);

        try {
            System.out.println("\n Check userController is controller \n");
            assertThat(this.userController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
