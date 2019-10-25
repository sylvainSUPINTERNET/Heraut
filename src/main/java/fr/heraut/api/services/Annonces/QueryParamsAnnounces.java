package fr.heraut.api.services.Annonces;


import org.springframework.context.annotation.ComponentScan;

import java.awt.print.Pageable;


@ComponentScan
public class QueryParamsAnnounces {
    String id;
    String zipCode;
    String page;


    QueryParamsAnnounces(){}

    QueryParamsAnnounces(String queryParamsId, String zipCode, String page){
        this.id = queryParamsId;
        this.zipCode = zipCode;
        this.page = page;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
