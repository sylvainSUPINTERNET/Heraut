package fr.heraut.api.services.Bookings;

import fr.heraut.api.DTO.BookingCreateDTO;
import fr.heraut.api.DTO.BookingsDTO;
import fr.heraut.api.DTO.BookingsUserGetDTO;
import fr.heraut.api.models.*;
import fr.heraut.api.repositories.*;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import jdk.nashorn.internal.runtime.options.Option;
import org.modelmapper.ModelMapper;
import org.modelmapper.jackson.JsonNodeValueReader;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.springframework.http.ResponseEntity.badRequest;
import static org.springframework.http.ResponseEntity.ok;

@Service
public class BookingsService {

    BookingsRepository bookingsRepository;
    UserRepository userRepository;
    AnnouncesRepository announcesRepository;
    ServicesRepository servicesRepository;
    AnimalsTypeRepository animalsTypeRepository;
    GenericSuccess genericSuccess;
    BookingsUserGetDTO bookingsUserGetDTO;
    GenericError genericError;

    BookingsService(
            BookingsRepository bookingsRepository,
            GenericSuccess genericSuccess,
            GenericError genericError,
            UserRepository userRepository,
            AnnouncesRepository announcesRepository,
            ServicesRepository servicesRepository,
            AnimalsTypeRepository animalsTypeRepository,
            BookingsUserGetDTO bookingsUserGetDTO){
        this.bookingsRepository = bookingsRepository;
        this.genericError = genericError;
        this.genericSuccess = genericSuccess;
        this.userRepository = userRepository;
        this.servicesRepository = servicesRepository;
        this.announcesRepository = announcesRepository;
        this.animalsTypeRepository = animalsTypeRepository;
        this.bookingsUserGetDTO = bookingsUserGetDTO;
    }

    public ResponseEntity getOne(String announceUuid) {
        Optional<Booking>  booking = bookingsRepository.findByUuid(announceUuid);

        if (booking.isPresent()) {
            ModelMapper modelMapper = new ModelMapper();
            modelMapper.getConfiguration().addValueReader(new JsonNodeValueReader());
            BookingsDTO bookingsDTO = modelMapper.map(booking.get(), BookingsDTO.class);
            System.out.println(" ! ! !! ! !  ! !!  ");
            System.out.println(booking.get().getServices().size());
            //System.out.println(">>>>>" + bookingsDTO.getBookingUuid());
            return ok().body(bookingsDTO);
        } else {
            return ResponseEntity.badRequest().body(genericError.formatError("BOOKING_FIND_BY_UUID", "FR"));
        }
    }

    public ResponseEntity getUserBookings(String userId) {
                try {
                    long userIdConverted = Long.parseLong(userId);
                    Optional<User> user = userRepository.findById(userIdConverted);
                    if(user.isPresent()) {

                        if(user.get().getBookings().size() > 0) {
                            List<BookingsUserGetDTO> userBookings = new ArrayList<>();

                            for(Booking booking: user.get().getBookings()) {
                                BookingsUserGetDTO bugdt =  new BookingsUserGetDTO();
                                bugdt.setBookingId(booking.getId());
                                bugdt.setBookingCurrency(booking.getCurrency());
                                bugdt.setBookingUuid(booking.getUuid());
                                bugdt.setBookingEndAt(booking.getEndAt());
                                bugdt.setBookingStartAt(booking.getStartAt());
                                bugdt.setBookingStatus(booking.getActive());
                                bugdt.setBookingTotalPrice(booking.getTotalPrice());
                                bugdt.setCapacityAnimals(booking.getCapacityAnimals());
                                userBookings.add(bugdt);
                            }

                            return genericSuccess.formatSuccess(userBookings);
                        } else {
                            return genericSuccess.formatSuccess(user.get().getBookings());
                        }
                    } else {
                        return genericError.formatErrorWithHttpVerb("BOOKING_USER_NOT_FOUND","FR", HttpStatus.BAD_REQUEST);
                    }

                } catch(Exception e){
                    return genericError.formatErrorWithHttpVerb("BOOKING_INVALID_USER_ID","FR", HttpStatus.BAD_REQUEST);
                }
    }

    public ResponseEntity create(BookingCreateDTO bookingCreateDTO, Principal principal) {
        Optional<User> optionalUser = userRepository.findByEmail(principal.getName());
        Optional<Announces> optionalAnnounces = announcesRepository.findById(bookingCreateDTO.getAnnounceId());
        Optional<Services> optionalServices = servicesRepository.findById(bookingCreateDTO.getServiceId());
        Optional<AnimalsType> optionalAnimalsType = animalsTypeRepository.findById(bookingCreateDTO.getAnimalsTypeId());

        if(optionalAnnounces.isPresent()) {
            if(optionalServices.isPresent()) {
                if(optionalAnimalsType.isPresent()){
                    if (optionalUser.isPresent()) {
                        User user = optionalUser.get();
                        Booking newBooking = new Booking();

                        List<AnimalsType> atl = new ArrayList<>();
                        atl.add(optionalAnimalsType.get());

                        List<Services> s = new ArrayList<>();
                        s.add(optionalServices.get());

                        newBooking.setUser(user);
                        newBooking.setAnimalsTypes(atl);
                        newBooking.setAnnounces(optionalAnnounces.get());
                        newBooking.setServices(s);
                        newBooking.setStartAt(bookingCreateDTO.getBookingStartAt());
                        newBooking.setEndAt(bookingCreateDTO.getBookingEndAt());
                        newBooking.setTotalPrice(bookingCreateDTO.getBookingTotalPrice());
                        newBooking.setCapacityAnimals(bookingCreateDTO.getBookingCapacityAnimals());
                        newBooking.setPaid(bookingCreateDTO.isPaid());
                        newBooking.setConfirmed(bookingCreateDTO.isConfirmed());
                        System.out.println("debugg");
                        System.out.println("----------------------");
                        System.out.println(bookingCreateDTO.isConfirmed());
                        System.out.println(bookingCreateDTO.isPaid());
                        System.out.println("----------------------");
                        bookingsRepository.save(newBooking);
                        return ok(newBooking);

                    } else {
                        return badRequest().body("User not exist.");
                    }
                } else {
                    return badRequest().body("AnimalsType not exist.");
                }
            } else {
                return badRequest().body("Service not exist.");
            }
        } else {
            return badRequest().body("Announce not exist.");

        }

    }
}
