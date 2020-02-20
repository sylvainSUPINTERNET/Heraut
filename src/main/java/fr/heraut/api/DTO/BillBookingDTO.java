package fr.heraut.api.DTO;

import org.springframework.stereotype.Service;

@Service
public class BillBookingDTO {
    String chargeId;

    BillBookingDTO(){}


    public String getChargeId() {
        return chargeId;
    }

    public void setChargeId(String chargeId) {
        this.chargeId = chargeId;
    }
}
