package fr.heraut.api.services.Store;


import fr.heraut.api.DTO.Store.StoreCategoryCreateDTO;
import fr.heraut.api.models.StoreCategory;
import fr.heraut.api.repositories.StoreCategoryRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class CategoryService {
    GenericSuccess genericSuccess;
    GenericError genericError;
    StoreCategoryCreateDTO storeCategoryCreateDTO;
    StoreCategoryRepository storeCategoryRepository;

    CategoryService(GenericError genericError, GenericSuccess genericSuccess, StoreCategoryCreateDTO storeCategoryCreateDTO, StoreCategoryRepository storeCategoryRepository){
        this.genericSuccess = genericSuccess;
        this.genericError = genericError;
        this.storeCategoryRepository = storeCategoryRepository;
    }


    @Transactional
    public ResponseEntity createCategory(StoreCategoryCreateDTO storeCategoryCreateDTO){

        String catName = storeCategoryCreateDTO.getName();
        if(catName.trim().equals("")) {
            return genericError.formatErrorWithHttpVerb("CREATE_CAT_NAME","FR", HttpStatus.BAD_REQUEST);
        } else {
            StoreCategory newStoreCategory = new StoreCategory();
            newStoreCategory.setName(catName);
            storeCategoryRepository.save(newStoreCategory);
            return genericSuccess.formatSuccess(newStoreCategory);
        }
    }

    public ResponseEntity getAll(){
        return genericSuccess.formatSuccess(this.storeCategoryRepository.findAll());
    }




}
