package fr.heraut.api.models;


import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Currency;
import java.util.UUID;

@Entity
@Table(name="store_item")
@NoArgsConstructor
@AllArgsConstructor
public class StoreItem implements Serializable {
    // category many items has one category

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column
    String uuid;

    @Column
    String name;

    @Column
    String description;

    @Column
    String affiliate_link;

    @Column
    String affiliate_picture;

    @Column
    private boolean active;

    @Column
    int rating;

    @JsonBackReference(value = "itemCategory")
    @ManyToOne(fetch = FetchType.LAZY)
    private StoreCategory storeCategory;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAffiliate_link() {
        return affiliate_link;
    }

    public void setAffiliate_link(String affiliate_link) {
        this.affiliate_link = affiliate_link;
    }

    public String getAffiliate_picture() {
        return affiliate_picture;
    }

    public void setAffiliate_picture(String affiliate_picture) {
        this.affiliate_picture = affiliate_picture;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public StoreCategory getStoreCategory() {
        return storeCategory;
    }

    public void setStoreCategory(StoreCategory storeCategory) {
        this.storeCategory = storeCategory;
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

    @PrePersist
    protected void onCreate() {
        this.active = true;
        this.uuid = UUID.randomUUID().toString();
    }



}
