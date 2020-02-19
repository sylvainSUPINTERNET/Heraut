package fr.heraut.api.services.ResponseFormat;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class GenericSuccess {


    GenericSuccess(){}


    public ResponseEntity formatSuccess(Object object) {
        Map<Object, Object> model = new HashMap<>();
        model.put("http_status_code", HttpStatus.OK);
        model.put("error", false);
        model.put("data", object);
        return ResponseEntity.ok(model);
    }
}
