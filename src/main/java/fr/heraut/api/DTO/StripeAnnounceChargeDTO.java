package fr.heraut.api.DTO;

public class StripeAnnounceChargeDTO {

    String email;
    String token;
    String announceUuid;
    String expMonth;
    String expYear;
    String lastCardNumbers;
    String paymentType;
    String network;
    String country;
    int amount;

    StripeAnnounceChargeDTO(){

    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getExpMonth() {
        return expMonth;
    }

    public void setExpMonth(String expMonth) {
        this.expMonth = expMonth;
    }

    public String getExpYear() {
        return expYear;
    }

    public void setExpYear(String expYear) {
        this.expYear = expYear;
    }

    public String getLastCardNumbers() {
        return lastCardNumbers;
    }

    public void setLastCardNumbers(String lastCardNumbers) {
        this.lastCardNumbers = lastCardNumbers;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getNetwork() {
        return network;
    }

    public void setNetwork(String network) {
        this.network = network;
    }

    public String getAnnounceUuid() {
        return announceUuid;
    }

    public void setAnnounceUuid(String announceUuid) {
        this.announceUuid = announceUuid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
