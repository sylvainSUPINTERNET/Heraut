package fr.heraut.api.controllers.Bookings;

import fr.heraut.api.services.Bookings.BookingsService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/v1/bookings")
public class BookingsController {

    BookingsService bookingsService;

    BookingsController(BookingsService bookingsService){
        this.bookingsService = bookingsService;
    }

    @GetMapping("/{bookingUuid}")
    public ResponseEntity getOne(@PathVariable(name="bookingUuid") String bookingUuid){
        return this.bookingsService.getOne(bookingUuid);
    }
}
