package fr.heraut.api.services.Bills;

import fr.heraut.api.DTO.BillsCreateDTO;
import fr.heraut.api.models.Bills;
import fr.heraut.api.models.Booking;
import fr.heraut.api.models.User;
import fr.heraut.api.repositories.BillsRepository;
import fr.heraut.api.repositories.BookingsRepository;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.xml.ws.Response;
import java.security.Principal;
import java.util.*;

@Service
public class BillsService {

    BillsRepository billsRepository;
    BookingsRepository bookingsRepository;
    UserRepository userRepository;
    GenericSuccess genericSuccess;

    BillsService(BillsRepository billsRepository, UserRepository userRepository, BookingsRepository bookingsRepository, GenericSuccess genericSuccess){
        this.billsRepository = billsRepository;
        this.userRepository = userRepository;
        this.bookingsRepository = bookingsRepository;
        this.genericSuccess = genericSuccess;
    }


    public ResponseEntity create(BillsCreateDTO billsCreateDTO, Principal principal) {

        Optional<User> userOptional = userRepository.findById(billsCreateDTO.getUserId());
        Optional<Booking> bookingOptional = bookingsRepository.findById(billsCreateDTO.getBookingId());
        if(userOptional.isPresent()) {
            if(bookingOptional.isPresent()) {
                Bills bills = new Bills();
                bills.setUser(userOptional.get());
                bills.setAmount(billsCreateDTO.getAmount());
                bills.setBooking(bookingOptional.get());
                bills.setUrlReceipt(billsCreateDTO.getUrlReceipt());
                bills.setCurrency(billsCreateDTO.getCurrency());
                bills.setChargeId(billsCreateDTO.getChargeId());
                bills.setCreated(billsCreateDTO.getCreated());
                bills.setType(billsCreateDTO.getType());
                bills.setExpMonth(billsCreateDTO.getExpMonth());
                bills.setExpYear(billsCreateDTO.getExpYear());
                bills.setLastCardNumbers(billsCreateDTO.getLastCardNumbers());
                bills.setNetwork(billsCreateDTO.getNetwork());
                bills.setPaymentType(billsCreateDTO.getPaymentType());
                System.out.println("debuger");
                System.out.println(bills.getUser().getEmail());
                System.out.println(bills.getBooking().getId());
                
                Bills savedBill = billsRepository
                        .save(bills);

                return genericSuccess.formatSuccess(Collections.singletonMap("bill_id", savedBill.getId()));
            } else {
                return ResponseEntity.badRequest().body(Collections.singletonMap("response","Invalid booking id (not found)."));
            }
        } else {
            return ResponseEntity.badRequest().body(Collections.singletonMap("response", "Invalid user id (not found)."));
        }

    }
}
