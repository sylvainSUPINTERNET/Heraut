package fr.heraut.api.services.ResponseFormat;

import fr.heraut.api.models.User;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


@Service
public class RegisterSuccess {

    RegisterSuccess(){}


    public ResponseEntity formatSuccess(User user){


        Map<Object, Object> model2 = new HashMap<>();
        model2.put("id", user.getId());
        model2.put("roles", user.getRoles());
        model2.put("authorities", user.getAuthorities());
        model2.put("username", user.getUsername());
        model2.put("email", user.getEmail());
        model2.put("isAccountNonExpired", user.isAccountNonExpired());
        model2.put("isAccountNonLocked", user.isAccountNonLocked());
        model2.put("isCredentialsNonExpired", user.isCredentialsNonExpired());
        model2.put("isEnabled", user.isEnabled());

        Map<Object, Object> model = new HashMap<>();
        model.put("http_status_code", HttpStatus.OK.value());
        model.put("error", false);
        model.put("data", model2);


        return ResponseEntity.ok(model);
    }

}
