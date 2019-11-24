package fr.heraut.api.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name="announces")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Announces implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
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
    Boolean active;

    @OneToMany(
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            fetch = FetchType.LAZY
    )
    private List<Services> services = new ArrayList<>();

    @OneToMany(
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            fetch = FetchType.LAZY
    )
    private List<AnimalsType> animalsTypes = new ArrayList<>();

    @OneToMany(
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            fetch = FetchType.LAZY
    )
    private List<Equipments> equipments = new ArrayList<>();


    public void setActive(Boolean isActive){
        this.active = isActive;
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

    @PrePersist
    protected void onCreate() {
        this.active = true;
        this.uuid = UUID.randomUUID().toString();
    }

}
