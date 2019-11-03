package fr.heraut.api.repositories;


import fr.heraut.api.models.Announces;
import fr.heraut.api.models.Services;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ServicesRepository extends JpaRepository<Services, Long> {
    Optional<Services> findById(Long id);
}
