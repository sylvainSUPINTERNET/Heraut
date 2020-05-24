package fr.heraut.api.controllers.Stripe;


import com.stripe.Stripe;
import com.stripe.exception.*;
import fr.heraut.api.DTO.StripeAnnounceChargeDTO;
import fr.heraut.api.DTO.StripeChargeCreateDTO;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import fr.heraut.api.services.Stripe.StripeService;
import org.modelmapper.internal.bytebuddy.implementation.bytecode.Throw;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/v1/payment")
public class StripeController  {


    @Value("${stripe.keys.public}")
    private String API_PUBLIC_KEY;
    private StripeService stripeService;
    private GenericSuccess genericSuccess;
    private GenericError genericError;

    StripeController(StripeService stripeService, GenericSuccess genericSuccess, GenericError genericError){
        this.stripeService = stripeService;
        this.genericSuccess = genericSuccess;
        this.genericError = genericError;
    }



    @PostMapping("/charge/announce")
    public ResponseEntity createAnnounceCharge(@RequestBody StripeAnnounceChargeDTO stripeAnnounceChargeDTO){

        System.out.println(stripeAnnounceChargeDTO);

        if ( stripeAnnounceChargeDTO.getAnnounceUuid().isEmpty() || stripeAnnounceChargeDTO.getAnnounceUuid().equals("")) {
            return genericError.formatErrorWithHttpVerb("STRIPE_ANNOUNCE_UUID", "FR", HttpStatus.BAD_REQUEST);
        }

        if (stripeAnnounceChargeDTO.getToken() == null || stripeAnnounceChargeDTO.getToken().equals("") || stripeAnnounceChargeDTO.getToken().isEmpty()) {
            return genericError.formatErrorWithHttpVerb("STRIPE_ANNOUNCE_CHARGE_TOKEN_ERROR","FR", HttpStatus.BAD_REQUEST);
        }

        // validat amount
        if (stripeAnnounceChargeDTO.getAmount() < 299 ) {
            return genericError.formatErrorWithHttpVerb("STRIPE_ANNOUNCE_CHARGE_AMOUNT_ERROR","FR", HttpStatus.BAD_REQUEST);
        }


        //create charge
        try {
            String chargeId = stripeService.createChargeAnnounce(stripeAnnounceChargeDTO.getEmail(), stripeAnnounceChargeDTO.getToken(), stripeAnnounceChargeDTO.getAmount(), stripeAnnounceChargeDTO.getAnnounceUuid(), stripeAnnounceChargeDTO.getExpMonth(), stripeAnnounceChargeDTO.getExpYear(), stripeAnnounceChargeDTO.getLastCardNumbers(), stripeAnnounceChargeDTO.getPaymentType(), stripeAnnounceChargeDTO.getNetwork(), stripeAnnounceChargeDTO.getCountry());
            System.out.println("- DEBUG STRIPE - ");
            System.out.println(chargeId);
            if (chargeId == null) {
                return genericError.formatErrorWithHttpVerb("STRIPE_ANNOUNCE_CHARGE_ERROR","FR", HttpStatus.BAD_REQUEST);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        return genericSuccess.formatSuccess(stripeAnnounceChargeDTO);
    }


    //String email, String token, int amount

    @PostMapping("/charge")
    public ResponseEntity createCharge(@RequestBody StripeChargeCreateDTO stripeChargeCreateDTO){

        // TODO -> front for stripe
        // TODO -> configurer stripe for automatic emailing etc
        // TODO make sure the price is always > 5
        System.out.println("LOG");



        //validate data
        if (stripeChargeCreateDTO.getToken() == null || stripeChargeCreateDTO.getToken().equals("") || stripeChargeCreateDTO.getToken().isEmpty()) {
            return genericError.formatErrorWithHttpVerb("STRIPE_BOOKING_CHARGE_TOKEN_ERROR", "FR",HttpStatus.BAD_REQUEST);
        }

        // validat amount
        if (stripeChargeCreateDTO.getAmount() < 500 ) {
            return genericError.formatErrorWithHttpVerb("STRIPE_BOOKING_AMOUNT_ERROR", "FR",HttpStatus.BAD_REQUEST);
        }

        //create charge
        try {
            String chargeId = stripeService.createCharge(stripeChargeCreateDTO.getEmail(), stripeChargeCreateDTO.getToken(), stripeChargeCreateDTO.getAmount());
            System.out.println("- DEBUG STRIPE - ");
            System.out.println(chargeId);
            if (chargeId == null) {
                return genericError.formatErrorWithHttpVerb("STRIPE_BOOKING_CHARGE_ERROR","FR", HttpStatus.BAD_REQUEST);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // You may want to store charge id along with order information
        return genericSuccess.formatSuccess(stripeChargeCreateDTO);
    }



}
