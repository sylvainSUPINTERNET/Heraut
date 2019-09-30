package fr.heraut.api.controllers.User;

import fr.heraut.api.controllers.User.PojoUserApi.UserUpdateRoleAndAuthority;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

import static org.springframework.http.ResponseEntity.ok;

@RestController()
@RequestMapping("/v1")
public class UserRolesAndAuthorityController {

    @PutMapping("/granted")
    public ResponseEntity grantedUser(@AuthenticationPrincipal UserDetails userDetails, @RequestBody UserUpdateRoleAndAuthority userUpdate){
        Map<Object, Object> model = new HashMap<>();

        // TODO -> granted user role
        return ok(model);
    }
}
