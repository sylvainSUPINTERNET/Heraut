package fr.heraut.api;

import fr.heraut.api.controllers.Public.PublicController;
import fr.heraut.api.services.Public.PublicService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class PublicTests {

    @Autowired
    PublicController publicController;


    @Autowired
    PublicService publicService;



    PublicTests(){}


    @Test
    void isController() throws Exception {
        try {
            assertThat(this.publicController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.publicService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
