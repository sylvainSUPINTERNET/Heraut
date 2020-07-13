package fr.heraut.api;

import fr.heraut.api.controllers.Bookings.BookingsController;
import fr.heraut.api.repositories.BookingsRepository;
import fr.heraut.api.services.Bookings.BookingsService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest
public class BookingTests {

    @Autowired
    public BookingsController bookingsController;

    @Autowired
    public BookingsService bookingsService;

    @Autowired
    public BookingsRepository bookingsRepository;


    BookingTests(){}

    @Test
    void isController() throws Exception {
        try {
            assertThat(this.bookingsController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.bookingsService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isRepository() throws Exception {
        try {
            assertThat(this.bookingsRepository).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
