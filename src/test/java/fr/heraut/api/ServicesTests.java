package fr.heraut.api;

import fr.heraut.api.controllers.Services.ServicesController;
import fr.heraut.api.models.Services;
import fr.heraut.api.repositories.ServicesRepository;
import fr.heraut.api.services.Services.ServicesService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class ServicesTests {

    @Autowired
    ServicesController servicesController;

    @Autowired
    ServicesService servicesService;

    @Autowired
    ServicesRepository servicesRepository;

    ServicesTests(){}

    Services createServices(){
        Services services = new Services();
        services.setName("midi");
        return servicesRepository.save(services);
    }

    @Test
    void isController() throws Exception {
        try {
            assertThat(this.servicesController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.servicesService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isRepository() throws Exception {
        try {
            assertThat(this.servicesRepository).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void saveService(){
       Services services = createServices();
       assertThat(services.getName() != null);
    }
}
