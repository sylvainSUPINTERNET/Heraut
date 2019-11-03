package fr.heraut.api.repositories;

import fr.heraut.api.models.AnimalsType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface AnimalsTypeRepository extends JpaRepository<AnimalsType, Long> {
}
