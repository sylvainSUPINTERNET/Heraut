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

    @Column
    @NotNull
    private String title;

    @Column
    @NotNull
    private String streetAddress;

    @Column
    @NotNull
    private String zipCode;

    @Column(columnDefinition="tinyint(1) default 1")
    Boolean active;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;

}
