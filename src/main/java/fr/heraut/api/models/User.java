package fr.heraut.api.models;

import com.fasterxml.jackson.annotation.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import java.util.*;

import static java.util.stream.Collectors.toList;

@Entity
@Table(name="users")
@JsonIgnoreProperties({"bills", "bookings"})
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @NotEmpty
    private String username;

    @NotEmpty
    private String password;

    @JsonManagedReference
    @OneToMany(mappedBy="user")
    private Collection<Booking> bookings ;

    @Lob
    private byte[] picture;


    @JsonManagedReference("announceUser")
    @OneToMany(
            mappedBy = "user",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    //@JsonManagedReference is the forward part of reference – the one that gets serialized normally.
    //@JsonBackReference is the back part of reference – it will be omitted from serialization.
    // ref : https://www.baeldung.com/jackson-bidirectional-relationships-and-infinite-recursion
    private List<Announces> announces = new ArrayList<>();


    @JsonManagedReference("userBills")
    @OneToMany(
            mappedBy = "user_id",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    private List<Bills> bills = new ArrayList<>();


    @Email
    private String email;

    @ElementCollection(fetch = FetchType.EAGER)
    @Builder.Default
    private List<String> roles = new ArrayList<>();

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {

        return this.roles.stream().map(SimpleGrantedAuthority::new).collect(toList());
    }

    @Override
    public String getPassword() {
        return this.password;
    }


    // ATTENTION getUsername est overidé pour renvoyer le mail et non l'user email

    /**
     * ATTENTION cette fonction override getUsername de UserDetails dans models.User returns l'email (username est en réalité dans le systeme l'email de l'user)
     * @return
     */
    @Override
    public String getUsername() {
        return this.email;
    }

    // ATTENTION le getUser de UserDetails returns l'email, ici on return le vrai username
    public String getUsernameEntity() {
        return this.username;
    }



    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<String> getRoles() {
        return roles;
    }

    /**
     * Beware we using List and set role in authentication with Arrays.asList that create a FIXED SIZE ARRAY (so to modify send again a list)
     * @param roles
     */
    public void setRoles(List<String> roles) {
        this.roles = roles;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



    public Long getId() {
        return id;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public void addAnnounces(Announces announces) {
        this.announces.add(announces);
        //announces.setUser(this);
    }

    public void removeAnnounces(Announces announces) {
        this.announces.remove(announces);
        //announces.setUser(null);
    }

    public List<Announces> getAnnounces() {
        return announces;
    }

    public void setAnnounces(List<Announces> announces) {
        this.announces = announces;
    }

    public Collection<Booking> getBookings() {
        return bookings;
    }

    public void setBookings(Collection<Booking> bookings) {
        this.bookings = bookings;
    }


    public List<Bills> getBills() {
        return bills;
    }

    public void setBills(List<Bills> bills) {
        this.bills = bills;
    }


    public void setPicture(byte[] picture) {
        this.picture = picture;
    }

    public byte[] getPicture() {
        return picture;
    }
}
