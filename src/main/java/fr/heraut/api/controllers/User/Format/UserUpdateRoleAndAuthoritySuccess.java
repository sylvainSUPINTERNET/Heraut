package fr.heraut.api.controllers.User.Format;


import org.springframework.stereotype.Service;

/**
 * Fields name correspond to the request body expecting to get data
 */

@Service
public class UserUpdateRoleAndAuthoritySuccess {

    String newRole;


    UserUpdateRoleAndAuthoritySuccess(){}

    public String getNewRole() {
        return newRole;
    }

    public void setNewRole(String newRole) {
        this.newRole = newRole;
    }
}
