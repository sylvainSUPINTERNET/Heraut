package fr.heraut.api.services.Bills;

import fr.heraut.api.DTO.BillsCreateDTO;
import fr.heraut.api.DTO.BillsUserIdDTO;
import fr.heraut.api.models.Bills;
import fr.heraut.api.models.Booking;
import fr.heraut.api.models.User;
import fr.heraut.api.repositories.BillsRepository;
import fr.heraut.api.repositories.BookingsRepository;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.modelmapper.ModelMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import java.security.Principal;
import java.util.*;

@Service
public class BillsService {

    BillsRepository billsRepository;
    BookingsRepository bookingsRepository;
    UserRepository userRepository;
    GenericSuccess genericSuccess;
    GenericError genericError;
    BillsUserIdDTO billsUserIdDTO;

    BillsService(BillsRepository billsRepository, UserRepository userRepository, BookingsRepository bookingsRepository, GenericSuccess genericSuccess, GenericError genericError,BillsUserIdDTO billsUserIdDTO){
        this.billsRepository = billsRepository;
        this.userRepository = userRepository;
        this.bookingsRepository = bookingsRepository;
        this.genericSuccess = genericSuccess;
        this.genericError = genericError;
        this.billsUserIdDTO = billsUserIdDTO;
    }

    public ResponseEntity getAccountBills(Principal principal) {

       Optional<User> user =  userRepository.findByEmail(principal.getName());
       if(user.isPresent()) {

           List<Bills> userBills = user.get().getBills();


           List<BillsUserIdDTO> formatted = new ArrayList<>();
           for(Bills bill: userBills) {
               BillsUserIdDTO billsUserIdDTO = new BillsUserIdDTO();
               billsUserIdDTO.setBillActive(bill.isActive());
               billsUserIdDTO.setBillAmount(bill.getAmount());
               billsUserIdDTO.setBillChargeId(bill.getChargeId());
               billsUserIdDTO.setBillCreated(bill.getCreated());
               billsUserIdDTO.setBillCurrency(bill.getCurrency());
               billsUserIdDTO.setBillId(bill.getId());
               billsUserIdDTO.setBillPaymentType(bill.getType());
               billsUserIdDTO.setBillPaymentTypeCountry(bill.getCountry());
               billsUserIdDTO.setBillPaymentTypeExpiredMonth(bill.getExpMonth());
               billsUserIdDTO.setBillPaymentTypeExpiredYear(bill.getExpYear());
               billsUserIdDTO.setBillPaymentTypeLastCardNumbers(bill.getLastCardNumbers());
               billsUserIdDTO.setBillUrlReceipt(bill.getUrlReceipt());
               billsUserIdDTO.setBillPaymentTypeName(bill.getPaymentType());
               billsUserIdDTO.setBillPaymentTypeNetwork(bill.getNetwork());

               formatted.add(billsUserIdDTO);
           }
           return genericSuccess.formatSuccess(formatted);
       } else {
           return genericError.formatErrorWithHttpVerb("","FR", HttpStatus.BAD_REQUEST);
       }
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
                bills.setCountry(billsCreateDTO.getCountry());

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
