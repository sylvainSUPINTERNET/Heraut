package fr.heraut.api;

import fr.heraut.api.controllers.Announces.AnnouncesController;
import fr.heraut.api.repositories.AnnouncesRepository;
import fr.heraut.api.services.Annonces.AnnouncesService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class AnnounceTests {

    @Autowired
    AnnouncesController announcesController;

    @Autowired
    AnnouncesService announcesService;

    @Autowired
    AnnouncesRepository announcesRepository;

    AnnounceTests(){}

    @Test
    void isController() throws Exception {
        try {
            assertThat(this.announcesController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.announcesService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isRepository() throws Exception {
        try {
            assertThat(this.announcesRepository).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }




}
