package fr.heraut.api.repositories;

import fr.heraut.api.models.Booking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface BookingsRepository extends JpaRepository<Booking, Long> {
    Optional<Booking> findByUuid(String uuid);

}
