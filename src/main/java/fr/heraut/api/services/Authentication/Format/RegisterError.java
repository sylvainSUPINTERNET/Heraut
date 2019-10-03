package fr.heraut.api.services.Authentication.Format;

import fr.heraut.api.i18n.ErrorsMessages;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class RegisterError {

    private ErrorsMessages errorsMessages;

    RegisterError(ErrorsMessages errorsMessages) {
        this.errorsMessages = errorsMessages;
    }

    public ResponseEntity formatError(String MESSAGE_KEY) {

        Map<Object, Object> model2 = new HashMap<>();
        model2.put("message", errorsMessages.getTranslation("FR").get(MESSAGE_KEY));

        Map<Object, Object> model = new HashMap<>();
        model.put("http_status_code", HttpStatus.BAD_REQUEST);
        model.put("error", true);
        model.put("data", model2);

        return ResponseEntity.badRequest().body(model);


    }


}
