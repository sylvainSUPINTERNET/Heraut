package fr.heraut.api.DTO;

import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;

@Service
public class BookingsDTO {
    String bookingUuid;
    String bookingCurrency;
    boolean bookingIsActive;
    boolean bookingIsPaid;
    boolean bookingIsConfirmed;
    BigDecimal bookingTotalPrice;
    LocalDateTime bookingStartAt;
    LocalDateTime bookingEndAt;
    int bookingCapacityAnimals;
    LocalDateTime bookingCreatedAt;
    LocalDateTime bookingUpdatedAt;
    BookingsUserDTO bookingUser;
    BookingsAnnounceDTO bookingAnnounces;
    List<BookingsServicesDTO> bookingServices;
    List<BookingsAnimalsTypeDTO> bookingAnimalsTypes;
    Collection<BillBookingDTO> bills;


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

    public boolean isBookingIsActive() {
        return bookingIsActive;
    }

    public void setBookingIsActive(boolean bookingIsActive) {
        this.bookingIsActive = bookingIsActive;
    }

    public boolean isBookingIsConfirmed() {
        return bookingIsConfirmed;
    }

    public void setBookingIsConfirmed(boolean bookingIsConfirmed) {
        this.bookingIsConfirmed = bookingIsConfirmed;
    }

    public BigDecimal getBookingTotalPrice() {
        return bookingTotalPrice;
    }

    public void setBookingTotalPrice(BigDecimal bookingTotalPrice) {
        this.bookingTotalPrice = bookingTotalPrice;
    }

    public LocalDateTime getBookingStartAt() {
        return bookingStartAt;
    }

    public void setBookingStartAt(LocalDateTime bookingStartAt) {
        this.bookingStartAt = bookingStartAt;
    }

    public LocalDateTime getBookingEndAt() {
        return bookingEndAt;
    }

    public void setBookingEndAt(LocalDateTime bookingEndAt) {
        this.bookingEndAt = bookingEndAt;
    }

    public int getBookingCapacityAnimals() {
        return bookingCapacityAnimals;
    }

    public void setBookingCapacityAnimals(int bookingCapacityAnimals) {
        this.bookingCapacityAnimals = bookingCapacityAnimals;
    }

    public BookingsAnnounceDTO getBookingAnnounces() {
        return bookingAnnounces;
    }

    public void setBookingAnnounces(BookingsAnnounceDTO bookingAnnounces) {
        this.bookingAnnounces = bookingAnnounces;
    }

    public List<BookingsServicesDTO> getBookingServices() {
        return bookingServices;
    }

    public void setBookingServices(List<BookingsServicesDTO> bookingServices) {
        this.bookingServices = bookingServices;
    }

    public LocalDateTime getBookingCreatedAt() {
        return bookingCreatedAt;
    }

    public void setBookingCreatedAt(LocalDateTime bookingCreatedAt) {
        this.bookingCreatedAt = bookingCreatedAt;
    }

    public LocalDateTime getBookingUpdatedAt() {
        return bookingUpdatedAt;
    }

    public void setBookingUpdatedAt(LocalDateTime bookingUpdatedAt) {
        this.bookingUpdatedAt = bookingUpdatedAt;
    }

    public BookingsUserDTO getBookingUser() {
        return bookingUser;
    }

    public void setBookingUser(BookingsUserDTO bookingUser) {
        this.bookingUser = bookingUser;
    }

    public List<BookingsAnimalsTypeDTO> getBookingAnimalsTypes() {
        return bookingAnimalsTypes;
    }

    public void setBookingAnimalsTypes(List<BookingsAnimalsTypeDTO> bookingAnimalsTypes) {
        this.bookingAnimalsTypes = bookingAnimalsTypes;
    }

    public boolean isBookingIsPaid() {
        return bookingIsPaid;
    }

    public void setBookingIsPaid(boolean bookingIsPaid) {
        this.bookingIsPaid = bookingIsPaid;
    }

    public Collection<BillBookingDTO> getBills() {
        return bills;
    }

    public void setBills(Collection<BillBookingDTO> bills) {
        this.bills = bills;
    }
}
