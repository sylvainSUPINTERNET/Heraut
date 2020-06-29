package fr.heraut.api;

import fr.heraut.api.JWT.JwtTokenProvider;
import fr.heraut.api.controllers.User.Format.UserController;
import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.User.ApiUserDetailsService;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest
class UserTests {

    @Autowired
    ApiUserDetailsService apiUserDetailsService;

    @Autowired
    UserController userController;

    @Autowired
    UserRepository userRepository;

    @Autowired
    JwtTokenProvider jwtTokenProvider;

    String tokAdmin;
    String tokUser;

    User getUser(String role){
        if(role.equals("ROLE_ADMIN")) {
            return userRepository.findByUsername("admintest@admintest.fr").get();
        } else {
            return userRepository.findByUsername("usertest@usertest.fr").get();
        }
    };

    void setTokens(){
        Optional<User> userTest = userRepository.findByUsername("usertest@usertest.fr");
        Optional<User> adminTest = userRepository.findByUsername("admintest@admintest.fr");

        if(userTest.isPresent()) {
            User user = userTest.get();
            this.tokUser = this.jwtTokenProvider.createToken(user.getUsername(), user.getRoles());
        }

        if(adminTest.isPresent()) {
            User admin = adminTest.get();
            this.tokAdmin = this.jwtTokenProvider.createToken(admin.getUsername(), admin.getRoles());
        }
    }


    public Optional<Authentication> authenticateAs(String roleName, String token) {
        UserDetails userDetails;

        if(roleName.equals("ROLE_ADMIN")) {
            userDetails = this.apiUserDetailsService.loadUserByUsername("admintest@admintest.fr");
            return Optional.of(new UsernamePasswordAuthenticationToken(userDetails, "", userDetails.getAuthorities()));
        } else
        if(roleName.equals("ROLE_USER")) {
            userDetails = this.apiUserDetailsService.loadUserByUsername("usertest@usertest.fr");
            return Optional.of(new UsernamePasswordAuthenticationToken(userDetails, "", userDetails.getAuthorities()));
        }

        return Optional.empty();
    }

    @BeforeEach
    void beforeAllMethod(){

        if( !userRepository.findByUsername("admintest@admintest.fr").isPresent()) {
            User userAdmin = new User();
            List<String> roles = new ArrayList<>();
            roles.add("ROLE_ADMIN");
            userAdmin.setUsername("admintest@admintest.fr");
            userAdmin.setRoles(roles);
            userAdmin.setPassword("admintest");
            userAdmin.setEmail("admintest@admintest.fr");
            userRepository.save(userAdmin);

        }

        if( !userRepository.findByUsername("usertest@usertest.fr").isPresent()) {
            User userTest = new User();
            List<String> roles = new ArrayList<>();
            roles.add("ROLE_USER");
            userTest.setUsername("usertest@usertest.fr");
            userTest.setRoles(roles);
            userTest.setPassword("usertest");
            userTest.setEmail("usertest@usertest.fr");
            userRepository.save(userTest);
        }


        System.out.println("-- - - - - -- --- - - - - -- --- - - - - -- --- - - - - -- --- - - - - -- -");
        for(User user : userRepository.findAll()) {
            System.out.println(user.getUsername());
        }

        System.out.println("--- -- -- --- -- - BEFORE ALL --- -- -- --- -- - ");
        System.out.println("--- -- -- --- -- - BEFORE ALL --- -- -- --- -- - ");
        System.out.println("--- -- -- --- -- - BEFORE ALL --- -- -- --- -- - ");
        System.out.println("--- -- -- --- -- - BEFORE ALL --- -- -- --- -- - ");


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

    @Test
    void usernameIsString() {
        User user = this.getUser("ROLE_ADMIN");
        assertThat(user.getUsername() != null && user.getUsername() instanceof String);
    }

    @Test
    void passwordIsString() {
        User user = this.getUser("ROLE_ADMIN");
        System.out.println(user.getPassword());
        assertThat(user.getPassword() != null && user.getPassword() instanceof String);
    }

    @Test
    void emailIsString() {
        User user = this.getUser("ROLE_ADMIN");
        System.out.println(user.getEmail());
        assertThat(user.getEmail() != null && user.getEmail() instanceof String);
    }

}
