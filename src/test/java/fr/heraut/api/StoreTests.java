package fr.heraut.api;

import fr.heraut.api.controllers.Store.StoreController;
import fr.heraut.api.repositories.StoreCategoryRepository;
import fr.heraut.api.repositories.StoreItemRepository;
import fr.heraut.api.services.Store.CategoryService;
import fr.heraut.api.services.Store.ItemService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class StoreTests {

    @Autowired
    public StoreController storeController;

    @Autowired
    public StoreItemRepository storeItemRepository;

    @Autowired
    public CategoryService categoryService;

    @Autowired
    public ItemService itemService;

    @Autowired
    public StoreCategoryRepository storeCategoryRepository;


    StoreTests() { }

    @Test
    void isController() throws Exception {
        try {
            assertThat(this.storeController).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }


    @Test
    void isRepositoryCat() throws Exception {
        try {
            assertThat(this.storeCategoryRepository).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isRepositoryItem() throws Exception {
        try {
            assertThat(this.storeItemRepository).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
