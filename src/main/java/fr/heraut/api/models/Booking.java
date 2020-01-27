package fr.heraut.api.models;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import fr.heraut.api.shared.IModels;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.*;

@Entity
@Table(name="booking")
@AllArgsConstructor
@NoArgsConstructor
public class Booking implements Serializable, IModels {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column
    private String uuid;

    @Column
    private String currency;

    @Column
    Boolean active;

    @Column
    Boolean isConfirmed;

    @Column
    BigDecimal totalPrice;

    @Column
    boolean isPaid;

    private LocalDateTime startAt;

    private LocalDateTime endAt;

    @Column
    int capacityAnimals; // nb d'animaux a garder

    @JsonBackReference
    @ManyToOne(fetch = FetchType.LAZY)
    private User user ;


    @JsonBackReference(value = "announceBookings")
    @ManyToOne(fetch = FetchType.LAZY)
    private Announces announces ;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "bookings_services",
            joinColumns = {@JoinColumn(name = "booking_id")},
            inverseJoinColumns = {@JoinColumn(name = "service_id")})
    private List<Services> services = new ArrayList<>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "bookings_animalsTypes",
            joinColumns = {@JoinColumn(name = "booking_id")},
            inverseJoinColumns = {@JoinColumn(name = "animalsType_id")})
    private List<AnimalsType> animalsTypes = new ArrayList<>();

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Services> getServices() {
        return services;
    }

    public void setServices(List<Services> services) {
        this.services = services;
    }

    public List<AnimalsType> getAnimalsTypes() {
        return animalsTypes;
    }

    public void setAnimalsTypes(List<AnimalsType> animalsTypes) {
        this.animalsTypes = animalsTypes;
    }

    public Announces getAnnounces() {
        return announces;
    }

    public void setAnnounces(Announces announces) {
        this.announces = announces;
    }


    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;

    @PrePersist
    protected void onCreate() {
        this.active = true;
        this.uuid = UUID.randomUUID().toString();
        this.currency = Currency.getInstance("EUR").getDisplayName();
        this.isPaid = false;
        this.isConfirmed = false;
    }

    public int getCapacityAnimals() {
        return capacityAnimals;
    }

    public void setCapacityAnimals(int capacityAnimals) {
        this.capacityAnimals = capacityAnimals;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
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

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public Boolean getConfirmed() {
        return isConfirmed;
    }

    public void setConfirmed(Boolean confirmed) {
        isConfirmed = confirmed;
    }

    public LocalDateTime getStartAt() {
        return startAt;
    }

    public void setStartAt(LocalDateTime startAt) {
        this.startAt = startAt;
    }

    public LocalDateTime getEndAt() {
        return endAt;
    }

    public void setEndAt(LocalDateTime endAt) {
        this.endAt = endAt;
    }

    public boolean isPaid() {
        return isPaid;
    }

    public void setPaid(boolean paid) {
        isPaid = paid;
    }
}
