package fr.heraut.api.services.Annonces;


import org.springframework.context.annotation.ComponentScan;

import java.awt.print.Pageable;


@ComponentScan
public class QueryParamsAnnounces {
    String zipCode;
    String service;
    String animal;
    String page;

    QueryParamsAnnounces(){}

    QueryParamsAnnounces(String zipCode, String service, String animal, String page){
        this.zipCode = zipCode;
        this.service = service;
        this.animal = animal;
        this.page = page;
    }

    public String getService() {
        return service;
    }

    public void setService(String serviceId) {
        this.service = serviceId;
    }

    public String getAnimal() {
        return animal;
    }

    public void setAnimal(String animalTypeId) {
        this.animal = animalTypeId;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }
}
