package fr.heraut.api.repositories;

import fr.heraut.api.models.Bills;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BillsRepository extends JpaRepository<Bills, Long> {
}
