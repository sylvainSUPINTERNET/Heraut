package fr.heraut.api.controllers.Bookings;

import fr.heraut.api.DTO.BookingCreateDTO;
import fr.heraut.api.models.Booking;
import fr.heraut.api.services.Bookings.BookingsService;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;

import static org.springframework.http.ResponseEntity.ok;


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

    @PostMapping("/tcreate")
    public String testcreate(@RequestBody Booking booking,Principal principal) {
        System.out.println(" - -- -- - - -- - -  -- - ");
        System.out.println(principal);
        return "testcreate";
    }

    @PostMapping
    public ResponseEntity create(@RequestBody BookingCreateDTO bookingCreateDTO, Principal principal){
        System.out.println("Submit new booking ?");
        System.out.println(" -- - - - - -- - - -- - - - -- ");
        System.out.println(" -- - - - - -- - - -- - - - -- ");
        System.out.println(" -- - - - - -- - - -- - - - -- ");
        System.out.println(" -- - - - - -- - - -- - - - -- ");
        return this.bookingsService.create(bookingCreateDTO, principal);
    }

    @GetMapping("/user/{userId}")
    public ResponseEntity getByUserId(@PathVariable(name="userId") String userId){
        return bookingsService.getUserBookings(userId);
    }

    @PutMapping("/confirm/{bookingUuid}")
    public ResponseEntity updateConfirm(@PathVariable(name= "bookingUuid") String bookingUuid){
        return bookingsService.updateConfirm(bookingUuid);
    }

    // Get all bookings for one announce (for the logged user)
    @GetMapping("/announce/{announceUuid}")
    public ResponseEntity getByUserIdAndAnnounceUuid(@PathVariable(name="announceUuid") String announceUuid, Principal principal) {
        return bookingsService.getByUserIdAndAnnounceUuid(principal, announceUuid);
    }

    @PutMapping("/rejected/{bookingUuid}")
    public ResponseEntity reject(@PathVariable(name= "bookingUuid") String bookingUuid) {
        return bookingsService.reject(bookingUuid);
    }

    // Get all bookings for one announce (not related to the logged user)
    // MyDemande
    @GetMapping("/{announceUuid}/demandes")
    public ResponseEntity myDemandes(@PathVariable(name= "announceUuid") String announceUuid){
        return bookingsService.myDemande(announceUuid);
    }
}
