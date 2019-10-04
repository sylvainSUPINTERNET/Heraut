package fr.heraut.api.controllers.User;

import fr.heraut.api.config.Roles;
import fr.heraut.api.controllers.User.Format.UserUpdateRoleAndAuthoritySuccess;
import fr.heraut.api.models.User;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.RegisterSuccess;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.*;

import static org.springframework.http.ResponseEntity.ok;

@RestController()
@RequestMapping("/v1")
public class UserRolesAndAuthorityController {

    private Roles apiRoles;
    private UserRepository userRepository;
    private GenericError genericError;
    private RegisterSuccess registerSuccess;

    UserRolesAndAuthorityController(Roles apiRoles, UserRepository userRepository, GenericError genericError, RegisterSuccess registerSuccess) {
        this.apiRoles = apiRoles;
        this.userRepository = userRepository;
        this.genericError = genericError;
        this.registerSuccess = registerSuccess;
    }


    @PutMapping("/granted/{user_id}")
    public ResponseEntity grantedUser(@AuthenticationPrincipal UserDetails userDetails, @RequestBody UserUpdateRoleAndAuthoritySuccess userUpdate, @PathVariable(value = "user_id") String user_id) {
        Map<Object, Object> model = new HashMap<>();

        try {
            long id = Long.parseLong(user_id);
            System.out.println(apiRoles.getROLE_USER());
            System.out.println(apiRoles.getROLE_ADMIN());
            System.out.println(user_id);

            Optional<User> user = userRepository
                    .findById(id);

            if (user.isPresent()) {
                System.out.print(userUpdate.getNewRole());
                // TODO -> check le role envoyé si il match avec un ROLES allow
                String newRole = userUpdate.getNewRole();

                if (apiRoles.getAllRoles().contains(newRole)) {
                    List<String> t = new ArrayList(Arrays.asList(newRole));
                    user.get().setRoles(t);
                    userRepository.save(user.get());
                    return registerSuccess.formatSuccess(user.get());

                } else {

                    return genericError.formatError("ROLE_AUTHORITY_ERROR_USER_UPDATE_ROLE", "FR");

                }

            } else {
                return genericError.formatError("ROLE_AUTHORITY_ERROR_USER_NOT_FOUND_FOR_ID", "FR");
            }

        } catch (Exception e) {
            //System.out.println(e.getMessage());
            return genericError.formatError("ROLE_AUTHORITY_ERROR_EXCEPTION_USER_ID_PARAM", "FR");
        }

    }
}
