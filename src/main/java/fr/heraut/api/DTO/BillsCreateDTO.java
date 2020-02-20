package fr.heraut.api.DTO;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

public class BillsCreateDTO {
    String chargeId;
    String urlReceipt;
    int amount;
    String currency;
    Long created;
    String type;
    String expMonth;
    String expYear;
    String lastCardNumbers;
    String network;
    String paymentType;
    String country;
    long userId;
    long bookingId;

    BillsCreateDTO(){}

    public String getChargeId() {
        return chargeId;
    }

    public void setChargeId(String chargeId) {
        this.chargeId = chargeId;
    }

    public String getUrlReceipt() {
        return urlReceipt;
    }

    public void setUrlReceipt(String urlReceipt) {
        this.urlReceipt = urlReceipt;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public Long getCreated() {
        return created;
    }

    public void setCreated(Long created) {
        this.created = created;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public String getNetwork() {
        return network;
    }

    public void setNetwork(String network) {
        this.network = network;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getBookingId() {
        return bookingId;
    }

    public void setBookingId(long bookingId) {
        this.bookingId = bookingId;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
