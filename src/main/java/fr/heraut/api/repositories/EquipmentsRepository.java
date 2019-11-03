package fr.heraut.api.repositories;

import fr.heraut.api.models.Equipments;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EquipmentsRepository extends JpaRepository<Equipments, Long> {
}
