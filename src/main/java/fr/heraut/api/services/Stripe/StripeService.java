package fr.heraut.api.services.Stripe;

import com.stripe.model.Charge;
import fr.heraut.api.models.Announces;
import fr.heraut.api.models.BillsAnnounce;
import fr.heraut.api.repositories.AnnouncesRepository;
import fr.heraut.api.repositories.BillsAnnounceRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Service
public class StripeService {
    @Value("${stripe.keys.secret}")
    private String API_SECRET_KEY;


    @Value("${announce.bills.amount}")
    private int announceBillAmount;

    BillsAnnounceRepository billsAnnounceRepository;
    AnnouncesRepository announcesRepository;

    StripeService(BillsAnnounceRepository billsAnnounceRepository, AnnouncesRepository announcesRepository){
        this.billsAnnounceRepository = billsAnnounceRepository;
        this.announcesRepository = announcesRepository;
    }


    public String createChargeAnnounce(String email, String token, int amount, String announceUuid, String expMonth, String expYear, String lastCardNumber, String paymentType, String network, String country) {




        // TODO -> update the Announce
        // TODO -> generate the bill


        String id = null;
        try {

            com.stripe.Stripe.apiKey = API_SECRET_KEY;
            Map<String, Object> chargeParams = new HashMap<>();
            chargeParams.put("amount", amount);
            chargeParams.put("currency", "eur");
            chargeParams.put("description", "Charge for announce multiple display" + email);
            chargeParams.put("source", token); // ^ obtained with Stripe.js

            //create a charge
            Charge charge = Charge.create(chargeParams);
            id = charge.getId();


            Optional<Announces> announcesOptional = this.announcesRepository.findByUuid(announceUuid);

            if(announcesOptional.isPresent()) {
                BillsAnnounce billsAnnounce = new BillsAnnounce();
                billsAnnounce.setAmount(charge.getAmount());
                billsAnnounce.setAnnounce(announcesOptional.get());
                billsAnnounce.setChargeId(charge.getId());
                billsAnnounce.setUrlReceipt(charge.getReceiptUrl());
                billsAnnounce.setCurrency(charge.getCurrency());
                billsAnnounce.setExpMonth(expMonth);
                billsAnnounce.setExpYear(expYear);
                billsAnnounce.setLastCardNumbers(lastCardNumber);
                billsAnnounce.setPaymentType(paymentType);
                billsAnnounce.setCreated(charge.getCreated());
                billsAnnounce.setNetwork(network);
                billsAnnounce.setType(charge.getPaymentMethodDetails().getType());
                billsAnnounce.setCountry(country);

                announcesOptional.get().setActive(true);
                announcesOptional.get().setActiveMultiple(true);

                announcesRepository.save(announcesOptional.get());
                billsAnnounceRepository.save(billsAnnounce);


            } else {
                throw new Exception("Announce not find");
            }

            /*
            announcesOptional.map( announce -> {
                BillsAnnounce billsAnnounce = new BillsAnnounce();
                billsAnnounce.setAmount(announceBillAmount);
                billsAnnounce.setAnnounce(announce);
                billsAnnounce.setChargeId(charge.getId());

                announce.setActive(true);
                announce.setActiveMultiple(true);

                announcesRepository.save(announce);
                return billsAnnounceRepository.save(billsAnnounce);

            }).orElseThrow(() -> new Exception("Announce not found for " + announceUuid));
             */

        } catch (Exception ex) {
            System.out.println("CREATE CHARGE SERVICE :  " + ex);
            ex.printStackTrace();
        }
        return id;
    }



    public String createCharge(String email, String token, int amount) {
        String id = null;
        try {
            com.stripe.Stripe.apiKey = API_SECRET_KEY;
            Map<String, Object> chargeParams = new HashMap<>();
            chargeParams.put("amount", amount);
            chargeParams.put("currency", "eur");
            chargeParams.put("description", "Charge for " + email);
            chargeParams.put("source", token); // ^ obtained with Stripe.js

            //create a charge
            Charge charge = Charge.create(chargeParams);
            id = charge.getId();
        } catch (Exception ex) {
            System.out.println("CREATE CHARGE SERVICE :  " + ex);
            ex.printStackTrace();
        }
        return id;
    }
}
