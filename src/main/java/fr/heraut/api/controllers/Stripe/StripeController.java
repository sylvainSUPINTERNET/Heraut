package fr.heraut.api.controllers.Stripe;


import com.stripe.Stripe;
import fr.heraut.api.DTO.StripeChargeCreateDTO;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import fr.heraut.api.services.Stripe.StripeService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.ws.Response;

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
    //String email, String token, int amount

    @PostMapping("/charge")
    public ResponseEntity createCharge(@RequestBody StripeChargeCreateDTO stripeChargeCreateDTO){

        // todo -> Update dictionnary for generic Error (also for bills);
        // TODO -> front for stripe
        // TODO -> configurer stripe for automatic emailing etc
        // TODO make sure the price is always > 5
        System.out.println("LOG");



        //validate data
        if (stripeChargeCreateDTO.getToken() == null) {
            return ResponseEntity.badRequest().body("stripe token is missing.");
        }

        // validat amount
        if (stripeChargeCreateDTO.getAmount() < 500 ) {
            return ResponseEntity.badRequest().body("Amount should more than 5.01 euros");
        }

        //create charge
        String chargeId = stripeService.createCharge(stripeChargeCreateDTO.getEmail(), stripeChargeCreateDTO.getToken(), stripeChargeCreateDTO.getAmount()); //$9.99 USD

        if (chargeId == null) {
            return ResponseEntity.badRequest().body("Error is occured while paying, please try later");
        }



        // You may want to store charge id along with order information
        return genericSuccess.formatSuccess(stripeChargeCreateDTO);

    }

}
