package fr.heraut.api.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDateTime;

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


    // todo -> UUID string (auto generate by API)

    @Column
    @NotNull
    private String title;

    @Column
    @NotNull
    private String streetAddress;

    @Column
    @NotNull
    private String zipCode;

    @Column(columnDefinition = "boolean default true")
    Boolean active;



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

}
