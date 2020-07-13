package fr.heraut.api;

import fr.heraut.api.controllers.Media.AnnouncesPicturesUploader;
import fr.heraut.api.services.Media.AnnouncesPicturesUploaderService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class MediaTests {

    @Autowired
    AnnouncesPicturesUploader announcesPicturesUploader;

    @Autowired
    AnnouncesPicturesUploaderService announcesPicturesUploaderService;


    MediaTests(){ }

    @Test
    void isController() throws Exception {
        try {
            assertThat(this.announcesPicturesUploaderService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.announcesPicturesUploader).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

}
