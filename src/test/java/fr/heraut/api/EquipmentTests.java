package fr.heraut.api;

import fr.heraut.api.controllers.Equipments.EquipmentsController;
import fr.heraut.api.repositories.EquipmentsRepository;
import fr.heraut.api.services.Equipments.EquipmentsService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class EquipmentTests {

    @Autowired
    EquipmentsController equipmentsController;

    @Autowired
    EquipmentsService equipmentsService;

    @Autowired
    EquipmentsRepository equipmentsRepository;


    EquipmentTests(){}

    @Test
    void isController() throws Exception {
        try {
            assertThat(this.equipmentsController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.equipmentsService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isRepository() throws Exception {
        try {
            assertThat(this.equipmentsRepository).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

}
