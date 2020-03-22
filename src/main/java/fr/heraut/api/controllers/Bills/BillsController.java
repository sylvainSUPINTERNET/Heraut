package fr.heraut.api.controllers.Bills;


import fr.heraut.api.DTO.BillsCreateDTO;
import fr.heraut.api.DTO.BookingCreateDTO;
import fr.heraut.api.models.Bills;
import fr.heraut.api.services.Bills.BillsService;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
@RequestMapping("/v1/bills")
public class BillsController {

    BillsService billsService;

    BillsController(BillsService billsService){
        this.billsService = billsService;
    }

    @PostMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity create(@RequestBody BillsCreateDTO billsCreateDTO, Principal principal){
        return this.billsService.create(billsCreateDTO, principal);

    }

    @GetMapping(value = "/account")
    public ResponseEntity getAccountBills(Principal principal){
        return this.billsService.getAccountBills(principal);
    }

}
