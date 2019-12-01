package fr.heraut.api.POJO;


import org.springframework.stereotype.Service;

import java.util.ArrayList;


@Service
public class AnnouncesAnimalsType {


    ArrayList<Long> animalsTypeIds;

    AnnouncesAnimalsType(){ }

    public ArrayList<Long> getAnimalsTypeIds() {
        return animalsTypeIds;
    }

    public void setAnimalsTypeIds(ArrayList<Long> animalsTypeIds) {
        this.animalsTypeIds = animalsTypeIds;
    }
}
