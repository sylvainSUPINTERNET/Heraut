package fr.heraut.api.services.ResponseFormat;


import fr.heraut.api.i18n.ErrorsMessages;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * This class is used to return basic error properly for API
 */
@Service
public class GenericError {

    private ErrorsMessages errorsMessages;

    GenericError(ErrorsMessages errorsMessages) {
        this.errorsMessages = errorsMessages;
    }

    public ResponseEntity formatError(String MESSAGE_KEY, String lang) {


        Map<Object, Object> mainMessage = new HashMap<>();
        mainMessage.put("message", errorsMessages.getTranslation(lang).get(MESSAGE_KEY));

        Map<Object, Object> model = new HashMap<>();
        model.put("http_status_code", HttpStatus.BAD_REQUEST);
        model.put("error", true);
        model.put("data", mainMessage);

        return ResponseEntity.badRequest().body(model);
    }

    public ResponseEntity formatErrorForException(String message, Throwable cause) {
        Map<Object, Object> model = new HashMap<>();
        Map<Object, Object> mainMessage = new HashMap<>();

        mainMessage.put("message", message);
        mainMessage.put("cause", cause);


        model.put("http_status_code", HttpStatus.BAD_REQUEST);
        model.put("error", true);
        model.put("data", mainMessage);
        return ResponseEntity.badRequest().body(model);
    }

    public ResponseEntity formatErrorWithHttpVerb(String MESSAGE_KEY, String lang, HttpStatus httpStatus) {


        Map<Object, Object> mainMessage = new HashMap<>();
        mainMessage.put("message", errorsMessages.getTranslation(lang).get(MESSAGE_KEY));

        Map<Object, Object> model = new HashMap<>();
        model.put("http_status_code", httpStatus.value());
        model.put("error", true);
        model.put("data", mainMessage);

        return ResponseEntity.status(httpStatus).body(model);
    }





}
