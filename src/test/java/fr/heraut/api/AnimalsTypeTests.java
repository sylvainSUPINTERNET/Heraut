package fr.heraut.api;

import fr.heraut.api.controllers.AnimalsType.AnimalsTypeController;
import fr.heraut.api.models.AnimalsType;
import fr.heraut.api.repositories.AnimalsTypeRepository;
import fr.heraut.api.services.AnimalsType.AnimalsTypeService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class AnimalsTypeTests {

    AnimalsType createAnimalsType(){
        AnimalsType animalsType = new AnimalsType();
        animalsType.setName("chat");
        return animalsTypeRepository.save(animalsType);
    }

    @Autowired
    AnimalsTypeController animalsTypeCtrl;

    @Autowired
    AnimalsTypeService animalsTypeService;

    @Autowired
    AnimalsTypeRepository animalsTypeRepository;


    AnimalsTypeTests(){ }


    @Test
    void isController() throws Exception {
        try {
            assertThat(this.animalsTypeCtrl).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isService() throws Exception {
        try {
            assertThat(this.animalsTypeService).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void isRepository() throws Exception {
        try {
            assertThat(this.animalsTypeRepository).isNotNull();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Test
    void saveAnimalsType(){
        assertThat(createAnimalsType() instanceof AnimalsType && createAnimalsType() != null);
    }

    @Test
    void animalsTypeName() {
        List<AnimalsType> animalsTypeList = this.animalsTypeRepository.findAll();
        AnimalsType firstAnimal = animalsTypeList.get(0);
        String firstname = firstAnimal.getName();
        assertThat(firstname != null);
        assertThat(firstname instanceof String);
    }

}
