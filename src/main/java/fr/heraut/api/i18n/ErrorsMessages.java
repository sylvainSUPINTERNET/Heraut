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

            // User and Authentication
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMPTY_FIELDS", "Les champs ne peuvent pas être vide.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_MISSING_FIELDS", "Champs invalide.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMAIL_FIELDS_ALREADY_EXIST", "Cette adresse email est déjà utilisée.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_USERNAME_FIELDS_ALREADY_EXIST", "Ce nom d'utilisateur est déjà utilisé.");

            // API granted Roles / Authority
            dict.put("ROLE_AUTHORITY_ERROR_EXCEPTION_USER_ID_PARAM", "Id utilisateur invalide.");
            dict.put("ROLE_AUTHORITY_ERROR_USER_NOT_FOUND_FOR_ID", "Pas d'utilisateur pour cette id.");
            dict.put("ROLE_AUTHORITY_ERROR_USER_UPDATE_ROLE", "Ce rôle n'est pas autorisé.");

        } else {
            // User and Authentication
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMPTY_FIELDS", "Fields are empty.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_MISSING_FIELDS", "Invalid fields.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMAIL_FIELDS_ALREADY_EXIST", "This email is already taken.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_USERNAME_FIELDS_ALREADY_EXIST", "This username is already used.");

            // API granted Roles / Authority
            dict.put("ROLE_AUTHORITY_ERROR_EXCEPTION_USER_ID_PARAM", "Id user given in URL is invalid.");
            dict.put("ROLE_AUTHORITY_ERROR_USER_NOT_FOUND_FOR_ID", "User not found for this id.");
            dict.put("ROLE_AUTHORITY_ERROR_USER_UPDATE_ROLE", "This role is not allow.");

        }

        return dict;

    }




}

