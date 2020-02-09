package fr.heraut.api.DTO;

import io.swagger.models.auth.In;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class AnnouncesCreateDTO {

    AnnouncesCreateDTO(){};

    String description;
    String title;
    String streetAddress ;
    String dept;
    String city;
    BigDecimal farePerHour;
    BigDecimal farePerDay;
    BigDecimal farePerMonth;

    // Set over list to avoid duplicate values (they are FK ...)
    Set<Long> servicesIds;
    Set<Long> animalsTypeIds;
    Set<Long> equipmentsIds;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public Set<Long> getServicesIds() {
        return servicesIds;
    }

    public void setServicesIds(Set<Long> servicesIds) {
        this.servicesIds = servicesIds;
    }

    public Set<Long> getAnimalsTypeIds() {
        return animalsTypeIds;
    }

    public void setAnimalsTypeIds(Set<Long> animalsTypeIds) {
        this.animalsTypeIds = animalsTypeIds;
    }

    public Set<Long> getEquipmentsIds() {
        return equipmentsIds;
    }

    public void setEquipmentsIds(Set<Long> equipmentsIds) {
        this.equipmentsIds = equipmentsIds;
    }
}
