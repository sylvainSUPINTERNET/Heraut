package fr.heraut.api;

import fr.heraut.api.controllers.Stripe.StripeController;
import fr.heraut.api.services.Stripe.StripeService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class StripeTests {

    @Autowired
    StripeController stripeController;

    @Autowired
    StripeService stripeService;

    StripeTests(){}

    @Test
    void isController() throws Exception {
        try {
            assertThat(this.stripeController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.stripeService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
