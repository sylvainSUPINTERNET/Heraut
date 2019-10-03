package fr.heraut.api.i18n;

import org.springframework.context.annotation.Configuration;

import java.util.HashMap;

@Configuration
public class ErrorsMessages {

    ErrorsMessages() {
    }


    public HashMap<Object, Object> getTranslation(String language) {
        HashMap<Object, Object> dict = new HashMap<>();

        if (language.equals("FR")) {
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMPTY_FIELDS", "Les champs ne peuvent pas être vide.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_MISSING_FIELDS", "Champs invalide.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMAIL_FIELDS_ALREADY_EXIST", "Cette adresse email est déjà utilisée.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_USERNAME_FIELDS_ALREADY_EXIST", "Ce nom d'utilisateur est déjà utilisé.");
        } else {
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMPTY_FIELDS", "Fields are empty.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_MISSING_FIELDS", "Invalid fields.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMAIL_FIELDS_ALREADY_EXIST", "This email is already taken.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_USERNAME_FIELDS_ALREADY_EXIST", "This username is already used.");
        }

        return dict;

    }


}

