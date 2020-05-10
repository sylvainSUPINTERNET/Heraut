package fr.heraut.api.repositories;

import fr.heraut.api.models.StoreItem;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface StoreItemRepository extends JpaRepository<StoreItem, Long> {
    @Query(value = "SELECT * FROM store_item as stri WHERE stri.store_category_id = :category AND stri.active = 1 ORDER BY stri.created_at ASC", nativeQuery = true)
    Page<StoreItem> findAllItemsByCategory(@Param("category") Long category, Pageable pageable);

}
