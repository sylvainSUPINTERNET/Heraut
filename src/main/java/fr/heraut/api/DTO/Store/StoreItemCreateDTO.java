package fr.heraut.api.DTO.Store;

import org.springframework.stereotype.Service;

@Service
public class StoreItemCreateDTO {
    String customName;
    String customDescription;
    String affiliateLink;
    String affiliatePicture;
    Long categoryId;

    public String getCustomName() {
        return customName;
    }

    public void setCustomName(String customName) {
        this.customName = customName;
    }

    public String getCustomDescription() {
        return customDescription;
    }

    public void setCustomDescription(String customDescription) {
        this.customDescription = customDescription;
    }

    public String getAffiliateLink() {
        return affiliateLink;
    }

    public void setAffiliateLink(String affiliateLink) {
        this.affiliateLink = affiliateLink;
    }

    public String getAffiliatePicture() {
        return affiliatePicture;
    }

    public void setAffiliatePicture(String affiliatePicture) {
        this.affiliatePicture = affiliatePicture;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }
}
