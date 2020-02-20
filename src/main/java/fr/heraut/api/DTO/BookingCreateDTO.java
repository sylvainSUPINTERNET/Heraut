package fr.heraut.api.DTO;

import org.apache.tomcat.jni.Local;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Service
public class BookingCreateDTO {
    BigDecimal bookingTotalPrice;
    LocalDateTime bookingEndAt;
    LocalDateTime bookingStartAt;
    int bookingCapacityAnimals;
    long userId;
    long announceId;
    long serviceId;
    long animalsTypeId;
    boolean isPaid;
    boolean isConfirmed;


    BookingCreateDTO(){}

    public BigDecimal getBookingTotalPrice() {
        return bookingTotalPrice;
    }

    public void setBookingTotalPrice(BigDecimal bookingTotalPrice) {
        this.bookingTotalPrice = bookingTotalPrice;
    }


    public LocalDateTime getBookingEndAt() {
        return bookingEndAt;
    }

    public void setBookingEndAt(LocalDateTime bookingEndAt) {
        this.bookingEndAt = bookingEndAt;
    }

    public LocalDateTime getBookingStartAt() {
        return bookingStartAt;
    }

    public void setBookingStartAt(LocalDateTime bookingStartAt) {
        this.bookingStartAt = bookingStartAt;
    }
    public int getBookingCapacityAnimals() {
        return bookingCapacityAnimals;
    }

    public void setBookingCapacityAnimals(int bookingCapacityAnimals) {
        this.bookingCapacityAnimals = bookingCapacityAnimals;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getAnnounceId() {
        return announceId;
    }

    public void setAnnounceId(long announceId) {
        this.announceId = announceId;
    }

    public long getServiceId() {
        return serviceId;
    }

    public void setServiceId(long serviceId) {
        this.serviceId = serviceId;
    }

    public long getAnimalsTypeId() {
        return animalsTypeId;
    }

    public void setAnimalsTypeId(long animalsTypeId) {
        this.animalsTypeId = animalsTypeId;
    }

    public boolean isPaid() {
        return isPaid;
    }

    public void setPaid(boolean paid) {
        isPaid = paid;
    }

    public boolean isConfirmed() {
        return isConfirmed;
    }

    public void setConfirmed(boolean confirmed) {
        isConfirmed = confirmed;
    }
}
