package fr.heraut.api.services.Bookings;

import fr.heraut.api.models.Booking;
import fr.heraut.api.repositories.BookingsRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Optional;

import static org.springframework.http.ResponseEntity.ok;

@Service
public class BookingsService {

    BookingsRepository bookingsRepository;
    GenericSuccess genericSuccess;
    GenericError genericError;

    BookingsService(BookingsRepository bookingsRepository, GenericSuccess genericSuccess, GenericError genericError){
        this.bookingsRepository = bookingsRepository;
        this.genericError = genericError;
        this.genericSuccess = genericSuccess;
    }

    public ResponseEntity getOne(String announceUuid) {
        Optional<Booking> announce = bookingsRepository.findByUuid(announceUuid);

        if (announce.isPresent()) {
            return ok(announce);
        } else {
            return ResponseEntity.badRequest().body(genericError.formatError("BOOKING_FIND_BY_UUID", "FR"));
        }
    }
}
