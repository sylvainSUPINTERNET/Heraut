package fr.heraut.api.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(name="bills_announce")
public class BillsAnnounce implements Serializable { // billing to display multiple announces at the same time

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column
    String chargeId;

    @Column
    String urlReceipt;

    @Column
    long amount;

    @Column
    String currency;

    @Column
    Long created; // charge creation date in timestamp (full digit)

    @Column
    boolean isPaid;

    @Column
    String type;

    @Column
    String expMonth;

    @Column
    String expYear;

    @Column
    String lastCardNumbers;

    @Column
    String network;

    @Column
    String paymentType;

    @Column
    boolean active;

    @Column
    String country;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;


    @JsonBackReference
    @ManyToOne(fetch = FetchType.LAZY)
    private Announces announce; // no bidirectionnel, because thats useless and mess the announcd model

    @PrePersist
    protected void onCreate() {
        this.active = true;
        this.isPaid = true;
    }


    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
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

    public boolean isPaid() {
        return isPaid;
    }

    public void setPaid(boolean paid) {
        isPaid = paid;
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

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }


    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Announces getAnnounce() {
        return announce;
    }

    public void setAnnounce(Announces announce) {
        this.announce = announce;
    }

}
