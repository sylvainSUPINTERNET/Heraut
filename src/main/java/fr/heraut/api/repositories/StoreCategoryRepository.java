package fr.heraut.api.repositories;

import fr.heraut.api.models.StoreCategory;
import fr.heraut.api.models.StoreItem;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface StoreCategoryRepository extends JpaRepository<StoreCategory, Long> {

}
