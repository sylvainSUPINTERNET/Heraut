package fr.heraut.api.repositories;

import fr.heraut.api.models.BillsAnnounce;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BillsAnnounceRepository extends JpaRepository<BillsAnnounce, Long> {
}
