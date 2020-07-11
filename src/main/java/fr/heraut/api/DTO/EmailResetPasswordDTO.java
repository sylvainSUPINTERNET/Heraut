package fr.heraut.api.DTO;

public class EmailResetPasswordDTO {

    String emailVerify;

    EmailResetPasswordDTO(){ }


    public String getEmailVerify() {
        return emailVerify;
    }

    public void setEmailVerify(String emailVerify) {
        this.emailVerify = emailVerify;
    }
}
