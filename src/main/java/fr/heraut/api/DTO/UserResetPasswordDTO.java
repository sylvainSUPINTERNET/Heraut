package fr.heraut.api.DTO;

public class UserResetPasswordDTO {
    String email;
    String newPassword;

    UserResetPasswordDTO(){

    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
}
