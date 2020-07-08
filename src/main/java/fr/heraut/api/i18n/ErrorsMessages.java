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
            dict.put("GET_RESET_PASSWORD", "Token invalide");
            dict.put("USER_FOR_RESET_NOT_FOUND", "User n'existe pas");
            dict.put("MISSING_BODY_RESET_PASSWORD", "Email / password invalident");


            // API granted Roles / Authority
            dict.put("ROLE_AUTHORITY_ERROR_EXCEPTION_USER_ID_PARAM", "Id utilisateur invalide.");
            dict.put("ROLE_AUTHORITY_ERROR_USER_NOT_FOUND_FOR_ID", "Pas d'utilisateur pour cette id.");
            dict.put("ROLE_AUTHORITY_ERROR_USER_UPDATE_ROLE", "Ce rôle n'est pas autorisé.");

            // SERVICES
            dict.put("SERVICES_BY_ID_NOT_FOUND","Le service pour cette id n'existe pas");
            dict.put("SERVICES_FIND_ALL_EMPTY", "Aucun services dans la base de données");

            // ANNOUNCES
            dict.put("ANNOUNCE_FIND_BY_UUID", "Pas d'annonce pour cette uuid");
            dict.put("ANNOUNCE_LIST_BAD_QUERY_PARAMS", "Query params invalide");
            dict.put("ANNOUNCE_BY_USERID", "Vous n'avez pas d'annonces pour le moment");
            dict.put("ANNOUNCE_UPDATE_UNAUTHORIZED", "Non authorisé");

            // ANNOUNCES with query params
            dict.put("ANNOUNCE_FIND_BY_QUERY_PARAMS", "Aucunes annonces trouvées");



            //AnimalsType
            dict.put("ANIMALS_TYPE_EMPTY", "Aucun animalsType dans la base de données");
            dict.put("ANIMALS_TYPE_BY_ID", "Aucun animalsType pour cette id");

            // EQUIPMENTS
            dict.put("EQUIPMENTS_FIND_BY_ID", "Aucun equipments pour cette id");
            dict.put("EQUIPMENTS_FIND_ALL", "Aucun equipments en base de données");

            // BOOKINGS
            dict.put("BOOKING_FIND_BY_UUID", "Aucune réservation.");
            dict.put("BOOKING_INVALID_USER_ID", "Id user invalide");
            dict.put("BOOKING_USER_NOT_FOUND", "User n'existe pas");


            // BILLS
            dict.put("BILLS_BY_USERID", "Aucune factures pour le moment");

            // STRIPE
            dict.put("STRIPE_ANNOUNCE_CHARGE_TOKEN_ERROR", "Token stripe non fournit");
            dict.put("STRIPE_ANNOUNCE_CHARGE_AMOUNT_ERROR", "le montant doit être de minimum 299");
            dict.put("STRIPE_ANNOUNCE_CHARGE_ERROR", "Une erreur est survenue lors du paiement, veuillez réessayer");
            dict.put("STRIPE_ANNOUNCE_UUID", "Announce uuid invalide");


            dict.put("STRIPE_BOOKING_CHARGE_TOKEN_ERROR", "Token stripe non fournit");
            dict.put("STRIPE_BOOKING_CHARGE_AMOUNT_ERROR", "le montant doit être de minimum 500");
            dict.put("STRIPE_BOOKING_CHARGE_ERROR", "Une erreur est survenue lors du paiement, veuillez réessayer");


            // UPLOAD
            dict.put("UPLOAD_INVALID_BODY", "announceId ou file invalid");
            dict.put("UPLOAD_NO_ANNOUNCE", "Aucune annonce trouvée");

            // Store - Category
            dict.put("CREATE_CAT_NAME", "Le champ name est vide.");

            // Store - Item
            dict.put("CREATE_NAME_STORE_ITEM_MISSING", "Le champ name est vide");
            dict.put("CREATE_AFFILIATION_LINK_STORE_ITEM_MISSING", "Le lien d'affiliation n'est pas indiqué");
            dict.put("CREATE_AFFILIATION_PICTURE_STORE_ITEM_MISSING", "Le lien d'affiliation image n'est pas indiqué");
            dict.put("CREATE_DESCRIPTION_STORE_ITEM_MISSING", "La description est vide");
            dict.put("CREATE_CATEGORY_STORE_ITEM_MISSING", "Id category invalide");


        } else {
            // User and Authentication
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMPTY_FIELDS", "Fields are empty.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_MISSING_FIELDS", "Invalid fields.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_EMAIL_FIELDS_ALREADY_EXIST", "This email is already taken.");
            dict.put("AUTHENTICATION_REGISTER_ERROR_USERNAME_FIELDS_ALREADY_EXIST", "This username is already used.");
            dict.put("GET_RESET_PASSWORD", "Invalid token");
            dict.put("USER_FOR_RESET_NOT_FOUND", "User not exist");
            dict.put("MISSING_BODY_RESET_PASSWORD", "Email / password invalid");


            // API granted Roles / Authority
            dict.put("ROLE_AUTHORITY_ERROR_EXCEPTION_USER_ID_PARAM", "Id user given in URL is invalid.");
            dict.put("ROLE_AUTHORITY_ERROR_USER_NOT_FOUND_FOR_ID", "User not found for this id.");
            dict.put("ROLE_AUTHORITY_ERROR_USER_UPDATE_ROLE", "This role is not allow.");


            // SERVICES
            dict.put("SERVICES_BY_ID_NOT_FOUND","The service for this id does not exist.");
            dict.put("SERVICES_FIND_ALL_EMPTY", "No services in database.");

            // ANNOUNCES
            dict.put("ANNOUNCE_FIND_BY_UUID", "No announce for this uuid.");
            dict.put("ANNOUNCE_LIST_BAD_QUERY_PARAMS", "Query params invalid");
            dict.put("ANNOUNCE_BY_USERID", "No announces for the moment");
            dict.put("ANNOUNCE_UPDATE_UNAUTHORIZED", "Unauthorized");


            // ANNOUNCES with query params
            dict.put("ANNOUNCE_FIND_BY_QUERY_PARAMS", "No announces found");

            //AnimalsType
            dict.put("ANIMALS_TYPE_EMPTY", "No animalsType in database");
            dict.put("ANIMALS_TYPE_BY_ID", "No animalsType for this id");

            // EQUIPMENTS
            dict.put("EQUIPMENTS_FIND_BY_ID", "No equipments for this id");
            dict.put("EQUIPMENTS_FIND_ALL", "No equipments in database");

            // BOOKINGS
            dict.put("BOOKING_FIND_BY_UUID", "No booking found.");
            dict.put("BOOKING_INVALID_USER_ID", "Id user invalid");
            dict.put("BOOKING_USER_NOT_FOUND", "User not found");


            // STRIPE
            dict.put("STRIPE_ANNOUNCE_CHARGE_TOKEN_ERROR", "Stripe token not provided");
            dict.put("STRIPE_ANNOUNCE_CHARGE_AMOUNT_ERROR", "Amount should be not less than 299");
            dict.put("STRIPE_ANNOUNCE_CHARGE_ERROR", "Cannot proceed the payment, please retry");
            dict.put("STRIPE_ANNOUNCE_UUID", "Announce uuid missing");

            dict.put("STRIPE_BOOKING_CHARGE_TOKEN_ERROR", "Stripe token not provided");
            dict.put("STRIPE_BOOKING_AMOUNT_ERROR", "Amount should be not less than 500");
            dict.put("STRIPE_BOOKING_CHARGE_ERROR", "Cannot proceed the payment, please retry");

            // BILLS
            dict.put("BILLS_BY_USERID", "No bills for the moment");


            // UPLOAD
            dict.put("UPLOAD_INVALID_BODY", "announceId or file missing");
            dict.put("UPLOAD_NO_ANNOUNCE", "No announce found");

            // Store - Category
            dict.put("CREATE_CAT_NAME", "The field name is empty");

            // Store - Item
            dict.put("CREATE_NAME_STORE_ITEM_MISSING", "Field name is empty");
            dict.put("CREATE_AFFILIATION_LINK_STORE_ITEM_MISSING", "Field affiliation link is empty");
            dict.put("CREATE_AFFILIATION_PICTURE_STORE_ITEM_MISSING", "Field affiliation picture link is empty");
            dict.put("CREATE_DESCRIPTION_STORE_ITEM_MISSING", "Field description is empty");
            dict.put("CREATE_CATEGORY_STORE_ITEM_MISSING", "Category id is not valid");

        }

        return dict;

    }




}

