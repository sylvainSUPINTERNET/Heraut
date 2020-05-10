package fr.heraut.api.controllers.Store;

import fr.heraut.api.DTO.Store.StoreCategoryCreateDTO;
import fr.heraut.api.DTO.Store.StoreItemCreateDTO;
import fr.heraut.api.models.StoreCategory;
import fr.heraut.api.services.Store.CategoryService;
import fr.heraut.api.services.Store.ItemService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@RestController
@RequestMapping("/v1/store")
public class StoreController {

    CategoryService categoryService;
    ItemService itemService;

    StoreController(CategoryService categoryService, ItemService itemService){
        this.categoryService = categoryService;
        this.itemService = itemService;
    }

    @PostMapping("/category")
    public ResponseEntity addCategory(@RequestBody StoreCategoryCreateDTO storeCategoryCreateDTO){
        return this.categoryService.createCategory(storeCategoryCreateDTO);
    }

    @GetMapping("/item")
    public ResponseEntity getItems(@RequestParam("category") long categoryId, @RequestParam("page") String page){
        // TODO -> faire le service / repository avec pagination + relation pour recup tous les items pour la categorie
        return this.itemService.getAllItemsByCat(categoryId, page);
    }

    @GetMapping("/category")
    public ResponseEntity getAllCategory(){
        return this.categoryService.getAll();
    }

    @PostMapping("/item")
    public ResponseEntity addItem(@RequestBody StoreItemCreateDTO storeItemCreateDTO) {
        return this.itemService.createItem(storeItemCreateDTO);
    }

}
