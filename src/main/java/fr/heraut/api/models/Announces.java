package fr.heraut.api.models;

import com.fasterxml.jackson.annotation.*;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.*;

@Entity
@Table(name = "announces")
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties({"bookings"})
public class Announces implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Lob
    @NotNull(message = "Description can't be null")
    @NotBlank(message = "Description can't be blank")
    private String description;

    @Column
    private String uuid;

    @Column
    @NotNull
    private String title;

    @Column
    @NotNull
    private String streetAddress;

    @Column
    @NotNull(message = "dept can't be null")
    @NotBlank(message = "dept is mandatory")
    private String dept;

    @Column
    @NotNull(message = "city can't be null")
    @NotBlank(message = "city is mandatory")
    private String city;

    @Column
    private BigDecimal farePerHour;

    @Column
    private BigDecimal farePerDay;

    @Column
    private BigDecimal farePerMonth;

    @Column
    private String currency;


    @Column
    Boolean active;

    /*
    @OneToMany(
            cascade = CascadeType.ALL,
            //orphanRemoval = true,
            fetch = FetchType.LAZY
    )
    private List<Services> services = new ArrayList<>();
     */



    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "announces_services",
            joinColumns = {@JoinColumn(name = "announces_id")},
            inverseJoinColumns = {@JoinColumn(name = "services_id")}
    )
    private List<Services> services = new ArrayList<>();

    /*
    @OneToMany(
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            fetch = FetchType.LAZY
    )
    private List<AnimalsType> animalsTypes = new ArrayList<>();
     */


    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "announces_animalsType",
            joinColumns = {@JoinColumn(name = "announces_id")},
            inverseJoinColumns = {@JoinColumn(name = "animalsType_id")}
    )
    private List<AnimalsType> animalsTypes = new ArrayList<>();


    /*
    @OneToMany(
            cascade = CascadeType.ALL,
            //orphanRemoval = true,
            fetch = FetchType.LAZY
    )
    private List<Equipments> equipments = new ArrayList<>();
     */

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "announces_equipments",
            joinColumns = {@JoinColumn(name = "announces_id")},
            inverseJoinColumns = {@JoinColumn(name = "equipments_id")}
    )
    private List<Equipments> equipments = new ArrayList<>();


    @JsonBackReference(value = "announceUser")
    @ManyToOne(fetch = FetchType.LAZY)
    private User user;


    @JsonIgnore
    @JsonManagedReference(value = "announceBookings")
    @OneToMany(mappedBy="announces")
    private Collection<Booking> bookings;

    public Collection<Booking> getBookings() {
        return bookings;
    }

    public void setBookings(Collection<Booking> bookings) {
        this.bookings = bookings;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Boolean getActive() {
        return active;
    }

    public void setAnimalsTypes(ArrayList<AnimalsType> animalsTypes) {
        this.animalsTypes = animalsTypes;
    }

    public List<AnimalsType> getAnimalsType() {
        return this.animalsTypes;
    }

    public List<Equipments> getEquipments() {
        return equipments;
    }

    public void setEquipments(List<Equipments> equipments) {
        this.equipments = equipments;
    }

    public List<Services> getServices() {
        return services;
    }

    public void setServices(List<Services> services) {
        this.services = services;
    }

    public BigDecimal getFarePerHour() {
        return farePerHour;
    }

    public void setFarePerHour(BigDecimal farePerHour) {
        this.farePerHour = farePerHour;
    }

    public BigDecimal getFarePerDay() {
        return farePerDay;
    }

    public void setFarePerDay(BigDecimal farePerDays) {
        this.farePerDay = farePerDays;
    }

    public BigDecimal getFarePerMonth() {
        return farePerMonth;
    }

    public void setFarePerMonth(BigDecimal farePerMonth) {
        this.farePerMonth = farePerMonth;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public void setActive(Boolean isActive) {
        this.active = isActive;
    }

    public Long getId(){
        return this.id;
    }
    // TODO
    // Lon (from API map ?)
    // Lat (from API map ?) auto complete by the calcul from streetAddress + zipCode given)

    // one announce has many services
    // service (create table Service -> constant /daily /evening /day /week /month /year /morning /afternoon
    // service -> id / name / price

    // one announce has many params
    // params : create table params (contains -> food / drink / toys / game place / bed / medical_equipments / certification etc

    // One announce has Many animal type
    // animalType : create table -> constant (id / string (name))

    // One Announce has Many Booking
    // booking: id / createdAt / total price / uuid / user_id (one user has many booking) / startAt / endAt / isCancel

    // todo -> SUR LE CONTROLLER recuperer toute les reservation ou isCancel est false regarder les zones reserve et les rayés (

    // TODO -> controller / service /// be able to searhc with query params for filter (services / params / animalType / Price)
    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @PrePersist
    protected void onCreate() {
        this.active = true;
        this.uuid = UUID.randomUUID().toString();
        this.currency = Currency.getInstance("EUR").getDisplayName();
    }

}
