package fr.heraut.api.repositories;


import fr.heraut.api.models.Announces;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface AnnouncesRepository extends JpaRepository<Announces, Long> {

    @Query("select count(a) from Announces a where active=1")
    int countByActive();

    Optional<Announces> findByUuid(String uuid);

    Page<Announces> findAll(Pageable pageable);


}
