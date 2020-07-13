package fr.heraut.api;


import fr.heraut.api.controllers.Bills.BillsController;
import fr.heraut.api.repositories.BillsRepository;
import fr.heraut.api.services.Bills.BillsService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class BillsTests {

    @Autowired
    public BillsController billsController;

    @Autowired
    public BillsService billsService;

    @Autowired
    public BillsRepository billsRepository;


    BillsTests(){}

    @Test
    void isController() throws Exception {
        try {
            assertThat(this.billsController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.billsService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isRepository() throws Exception {
        try {
            assertThat(this.billsRepository).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
