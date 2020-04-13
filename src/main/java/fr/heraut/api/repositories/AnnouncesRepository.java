package fr.heraut.api.repositories;


import fr.heraut.api.models.Announces;
import fr.heraut.api.models.AnimalsType;
import fr.heraut.api.models.Services;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AnnouncesRepository extends JpaRepository<Announces, Long> {

    @Query("select count(a) from Announces a where active=1")
    int countByActive();

    Optional<Announces> findByUuid(String uuid);

    Page<Announces> findAll(Pageable pageable);


    // filters animalType / service / dept
    //@Query("SELECT a FROM Announces a JOIN AnimalsType at ON at.id = :animals JOIN Services s ON s.id = :services WHERE a.dept = :department")
    @Query(value = "SELECT * FROM announces as ann JOIN announces_services as anns on ann.id = anns.announces_id JOIN announces_animals_type as aat on ann.id = aat.announces_id WHERE anns.services_id = :services AND aat.animals_type_id = :animals AND ann.dept = :department AND ann.active = 1 ORDER BY ann.created_at ASC", nativeQuery = true)
    Page<Announces> findAllByQueryAnimalsTypeServiceDeptAndPopulate(@Param("services") Long services, @Param("animals") Long animals, @Param("department") String department, Pageable pageable);

    // animals + dept
    @Query(value = "SELECT * FROM announces as ann JOIN announces_animals_type as aat on ann.id = aat.announces_id WHERE aat.animals_type_id = :animals AND ann.dept = :department AND ann.active = 1 ORDER BY ann.created_at ASC", nativeQuery = true)
    Page<Announces> findAllByQueryAnimalsTypeDeptAndPopulate(@Param("animals") Long animals, @Param("department") String department, Pageable pageable);

    // services + dept
    //@Query("SELECT a FROM Announces a JOIN Services s ON s.id = :services WHERE a.dept = :department")
    @Query(value = "SELECT * FROM announces as ann JOIN announces_services as anns on ann.id = anns.announces_id WHERE anns.services_id = :services AND ann.dept = :department AND ann.active = 1 ORDER BY ann.created_at ASC", nativeQuery = true)
    Page<Announces> findAllByQueryServiceDeptAndPopulate(@Param("services") Long services, @Param("department") String department, Pageable pageable);

    // services + animal
    //@Query("SELECT a FROM Announces a JOIN AnimalsType at ON at.id = :animals JOIN Services s ON s.id = :services")
    @Query(value = "SELECT * FROM announces as ann JOIN announces_services as anns on ann.id = anns.announces_id JOIN announces_animals_type as aat on ann.id = aat.announces_id WHERE anns.services_id = :services AND aat.animals_type_id = :animals AND ann.active = 1 ORDER BY ann.created_at ASC", nativeQuery = true)
    Page<Announces> findAllByQueryServiceAnimalsTypeAndPopulate(@Param("services") Long services, @Param("animals") Long animals,Pageable pageable);

    // services
    //@Query("SELECT a FROM Announces a JOIN Services s ON s.id = a.id WHERE s.id = :services")
    @Query(value = "SELECT * FROM announces as ann JOIN announces_services as anns on ann.id = anns.announces_id WHERE anns.services_id = :services AND ann.active = 1 ORDER BY ann.created_at ASC", nativeQuery = true)
    Page<Announces> findAllByQueryServiceAndPopulate(@Param("services") Long services,Pageable pageable);

    // animal
    //SELECT * FROM announces as ann JOIN announces_animals_type as aat on ann.id = aat.announces_id WHERE aat.animals_type_id = 1;
    @Query(value = "SELECT * FROM announces as ann JOIN announces_animals_type as aat on ann.id = aat.announces_id WHERE aat.animals_type_id = :animals AND ann.active = 1 ORDER BY ann.created_at ASC", nativeQuery = true)
    Page<Announces> findAllByQueryAnimalTypeAndPopulate(@Param("animals") Long animals,Pageable pageable);

    // dept (JPQL query !)
    @Query("SELECT a FROM Announces a WHERE a.dept = :department AND a.active = 1 ORDER BY a.createdAt ASC")
    Page<Announces> findAllByQueryDeptAndPopulate(@Param("department") String department,Pageable pageable);

    @Query(value = "SELECT * FROM announces as ann ORDER BY created_at ASC limit 5", nativeQuery = true)
    List<Announces> findLatestAnnounces();

}
