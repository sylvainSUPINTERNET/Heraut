package fr.heraut.api.DTO;

import org.springframework.stereotype.Service;

@Service
public class BillsUserIdDTO {

    long billId;
    String billChargeId;
    String billUrlReceipt;
    int billAmount;
    String billCurrency;
    long billCreated;
    String billPaymentType;
    String billPaymentTypeExpiredMonth;
    String billPaymentTypeExpiredYear;
    String billPaymentTypeLastCardNumbers;
    String billPaymentTypeNetwork;
    String billPaymentTypeName;
    boolean billActive;
    String billPaymentTypeCountry;

    public BillsUserIdDTO(){ }

    public long getBillId() {
        return billId;
    }

    public void setBillId(long billId) {
        this.billId = billId;
    }

    public String getBillChargeId() {
        return billChargeId;
    }

    public void setBillChargeId(String billChargeId) {
        this.billChargeId = billChargeId;
    }

    public String getBillUrlReceipt() {
        return billUrlReceipt;
    }

    public void setBillUrlReceipt(String billUrlReceipt) {
        this.billUrlReceipt = billUrlReceipt;
    }

    public int getBillAmount() {
        return billAmount;
    }

    public void setBillAmount(int billAmount) {
        this.billAmount = billAmount;
    }

    public String getBillCurrency() {
        return billCurrency;
    }

    public void setBillCurrency(String billCurrency) {
        this.billCurrency = billCurrency;
    }

    public long getBillCreated() {
        return billCreated;
    }

    public void setBillCreated(long billCreated) {
        this.billCreated = billCreated;
    }

    public String getBillPaymentType() {
        return billPaymentType;
    }

    public void setBillPaymentType(String billPaymentType) {
        this.billPaymentType = billPaymentType;
    }

    public String getBillPaymentTypeExpiredMonth() {
        return billPaymentTypeExpiredMonth;
    }

    public void setBillPaymentTypeExpiredMonth(String billPaymentTypeExpiredMonth) {
        this.billPaymentTypeExpiredMonth = billPaymentTypeExpiredMonth;
    }

    public String getBillPaymentTypeExpiredYear() {
        return billPaymentTypeExpiredYear;
    }

    public void setBillPaymentTypeExpiredYear(String billPaymentTypeExpiredYear) {
        this.billPaymentTypeExpiredYear = billPaymentTypeExpiredYear;
    }

    public String getBillPaymentTypeLastCardNumbers() {
        return billPaymentTypeLastCardNumbers;
    }

    public void setBillPaymentTypeLastCardNumbers(String billPaymentTypeLastCardNumbers) {
        this.billPaymentTypeLastCardNumbers = billPaymentTypeLastCardNumbers;
    }

    public String getBillPaymentTypeNetwork() {
        return billPaymentTypeNetwork;
    }

    public void setBillPaymentTypeNetwork(String billPaymentTypeNetwork) {
        this.billPaymentTypeNetwork = billPaymentTypeNetwork;
    }

    public String getBillPaymentTypeName() {
        return billPaymentTypeName;
    }

    public void setBillPaymentTypeName(String billPaymentTypeName) {
        this.billPaymentTypeName = billPaymentTypeName;
    }

    public boolean isBillActive() {
        return billActive;
    }

    public void setBillActive(boolean billActive) {
        this.billActive = billActive;
    }

    public String getBillPaymentTypeCountry() {
        return billPaymentTypeCountry;
    }

    public void setBillPaymentTypeCountry(String billPaymentTypeCountry) {
        this.billPaymentTypeCountry = billPaymentTypeCountry;
    }
}
