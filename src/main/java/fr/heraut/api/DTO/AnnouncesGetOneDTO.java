package fr.heraut.api.DTO;

import fr.heraut.api.POJO.AnnouncesAnimalsType;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class AnnouncesGetOneDTO {

    AnnouncesGetOneDTO(){

    }
        long id;
        String description;
        String uuid;
        String title;
        String streetAddress ;
        String dept;
        String city;
        BigDecimal farePerHour;
        BigDecimal farePerDay;
        BigDecimal farePerMonth;
        String currency;
        boolean isActive;
        List<AnnouncesServicesDTO> services;
        List<AnnouncesAnimalsTypeDTO> animalsType;
        List<AnnouncesEquipmentsDTO> equipments;
        LocalDateTime createdAt;
        LocalDateTime updatedAt;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public BigDecimal getFarePerHour() {
        return farePerHour;
    }

    public void setFarePerHour(BigDecimal farePerHour) {
        this.farePerHour = farePerHour;
    }

    public BigDecimal getFarePerDay() {
        return farePerDay;
    }

    public void setFarePerDay(BigDecimal farePerDay) {
        this.farePerDay = farePerDay;
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

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public List<AnnouncesServicesDTO> getServices() {
        return services;
    }

    public void setServices(List<AnnouncesServicesDTO> services) {
        this.services = services;
    }

    public List<AnnouncesAnimalsTypeDTO> getAnimalsType() {
        return animalsType;
    }

    public void setAnimalsType(List<AnnouncesAnimalsTypeDTO> animalsType) {
        this.animalsType = animalsType;
    }

    public List<AnnouncesEquipmentsDTO> getEquipments() {
        return equipments;
    }

    public void setEquipments(List<AnnouncesEquipmentsDTO> equipments) {
        this.equipments = equipments;
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
}
