package fr.heraut.api.repositories;


import fr.heraut.api.models.Announces;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AnnouncesRepository extends JpaRepository<Announces, Long> {

    @Query("select count(a) from Announces a where active=1")
    int countByActive();
}
