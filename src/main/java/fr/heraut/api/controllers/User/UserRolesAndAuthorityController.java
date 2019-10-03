package fr.heraut.api.controllers.User;

import fr.heraut.api.config.Roles;
import fr.heraut.api.controllers.User.Format.UserUpdateRoleAndAuthority;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

import static org.springframework.http.ResponseEntity.ok;

@RestController()
@RequestMapping("/v1")
public class UserRolesAndAuthorityController {

    private Roles apiRoles;

    UserRolesAndAuthorityController(Roles apiRoles){
        this.apiRoles = apiRoles;
    }


    @PutMapping("/granted/{user_id}")
    public ResponseEntity grantedUser(@AuthenticationPrincipal UserDetails userDetails, @RequestBody UserUpdateRoleAndAuthority userUpdate, @PathVariable(value="user_id") String user_id){
        Map<Object, Object> model = new HashMap<>();
        System.out.println(apiRoles.getROLE_USER());
        System.out.println(apiRoles.getROLE_ADMIN());
        System.out.println(user_id);
        // TODO => trouver l'user
        // todo => set ses roles

        // TODO -> granted user role
        return ok(model);
    }
}
