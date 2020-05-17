package fr.heraut.api.DTO;


import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Service
public class BookingsUserGetDTO {

    long bookingId;
    String bookingUuid;
    String bookingCurrency;
    boolean bookingStatus;
    BigDecimal bookingTotalPrice;
    LocalDateTime bookingEndAt;
    LocalDateTime bookingStartAt;
    int capacityAnimals;

    public BookingsUserGetDTO(){}

    public long getBookingId() {
        return bookingId;
    }

    public void setBookingId(long bookingId) {
        this.bookingId = bookingId;
    }

    public String getBookingUuid() {
        return bookingUuid;
    }

    public void setBookingUuid(String bookingUuid) {
        this.bookingUuid = bookingUuid;
    }

    public String getBookingCurrency() {
        return bookingCurrency;
    }

    public void setBookingCurrency(String bookingCurrency) {
        this.bookingCurrency = bookingCurrency;
    }

    public boolean isBookingStatus() {
        return bookingStatus;
    }

    public void setBookingStatus(boolean bookingStatus) {
        this.bookingStatus = bookingStatus;
    }

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

    public int getCapacityAnimals() {
        return capacityAnimals;
    }

    public void setCapacityAnimals(int capacityAnimals) {
        this.capacityAnimals = capacityAnimals;
    }
}

