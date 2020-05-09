package fr.heraut.api.services.Store;


import fr.heraut.api.DTO.Store.StoreCategoryCreateDTO;
import fr.heraut.api.DTO.Store.StoreItemCreateDTO;
import fr.heraut.api.models.StoreCategory;
import fr.heraut.api.models.StoreItem;
import fr.heraut.api.repositories.StoreCategoryRepository;
import fr.heraut.api.repositories.StoreItemRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.reflections.Store;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import javax.xml.ws.Response;
import java.util.Optional;

import static java.lang.Integer.parseInt;

@Service
public class ItemService {
    GenericSuccess genericSuccess;
    GenericError genericError;
    StoreItemCreateDTO storeItemCreateDTO;
    StoreItemRepository storeItemRepository;
    StoreCategoryRepository storeCategoryRepository;

    @Value("${pagination.announces.result.per.page}")
    String resultPerPage;


    ItemService(GenericError genericError, GenericSuccess genericSuccess, StoreItemCreateDTO storeItemCreateDTO, StoreItemRepository storeItemRepository, StoreCategoryRepository storeCategoryRepository) {
        this.genericSuccess = genericSuccess;
        this.genericError = genericError;
        this.storeItemRepository = storeItemRepository;
        this.storeCategoryRepository = storeCategoryRepository;
    }


    @Transactional
    public ResponseEntity createItem(StoreItemCreateDTO storeItemCreateDTO) {
        StoreItem storeItem = new StoreItem();

        if (storeItemCreateDTO.getCustomName().trim().equals("")) {
            return genericError.formatErrorWithHttpVerb("CREATE_NAME_STORE_ITEM_MISSING", "FR", HttpStatus.BAD_REQUEST);
        } else {
            storeItem.setName(storeItemCreateDTO.getCustomName());
        }

        if (storeItemCreateDTO.getAffiliateLink().trim().equals("")) {
            return genericError.formatErrorWithHttpVerb("CREATE_AFFILIATION_LINK_STORE_ITEM_MISSING", "FR", HttpStatus.BAD_REQUEST);
        } else {
            storeItem.setAffiliate_link(storeItemCreateDTO.getAffiliateLink());
        }

        if (storeItemCreateDTO.getAffiliatePicture().trim().equals("")) {
            return genericError.formatErrorWithHttpVerb("CREATE_AFFILIATION_PICTURE_STORE_ITEM_MISSING", "FR", HttpStatus.BAD_REQUEST);
        } else {
            storeItem.setAffiliate_picture(storeItemCreateDTO.getAffiliatePicture());
        }

        if (storeItemCreateDTO.getCustomDescription().trim().equals("")) {
            return genericError.formatErrorWithHttpVerb("CREATE_DESCRIPTION_STORE_ITEM_MISSING", "FR", HttpStatus.BAD_REQUEST);
        } else {
            storeItem.setDescription(storeItemCreateDTO.getCustomDescription());
        }


        Optional<StoreCategory> storeCategory = storeCategoryRepository.findById(storeItemCreateDTO.getCategoryId());
        if(storeCategory.isPresent()) {
            storeItem.setStoreCategory(storeCategory.get());
        } else {
            return genericError.formatErrorWithHttpVerb("CREATE_CATEGORY_STORE_ITEM_MISSING", "FR", HttpStatus.BAD_REQUEST);
        }

        storeItemRepository.save(storeItem);
        return genericSuccess.formatSuccess(storeItemCreateDTO);
    }

    public ResponseEntity getAllItemsByCat(long categoryId, String page){
        return ResponseEntity.ok("ok");
    }


}
