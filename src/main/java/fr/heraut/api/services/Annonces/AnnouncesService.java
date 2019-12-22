package fr.heraut.api.services.Annonces;


import com.sun.org.apache.xpath.internal.operations.Bool;
import fr.heraut.api.POJO.AnnouncesAnimalsType;
import fr.heraut.api.models.AnimalsType;
import fr.heraut.api.models.Announces;
import fr.heraut.api.repositories.AnimalsTypeRepository;
import fr.heraut.api.repositories.AnnouncesRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.springframework.http.ResponseEntity.badRequest;
import static org.springframework.http.ResponseEntity.ok;

@Service
public class AnnouncesService {

    AnnouncesRepository announcesRepository;
    AnimalsTypeRepository animalsTypeRepository;
    GenericError genericError;
    GenericSuccess genericSuccess;

    @Value("${pagination.announces.result.per.page}")
    String resultPerPage;

    AnnouncesService(AnnouncesRepository announcesRepository, GenericError genericError, AnimalsTypeRepository animalsTypeRepository, GenericSuccess genericSuccess){
        this.announcesRepository = announcesRepository;
        this.genericError = genericError;
        this.animalsTypeRepository = animalsTypeRepository;
        this.genericSuccess = genericSuccess;
    }




    public ResponseEntity create(Announces announces){
        System.out.println(" - - - - - - -- -");
        System.out.println(announcesRepository
                .save(announces).getId());
        System.out.println(announces.getAnimalsType());
        return ok(announces);
    }

    public ResponseEntity count(){
        return ok(announcesRepository.countByActive());
    }

    public ResponseEntity getOne(String announceUuid){
        Optional<Announces> announce = announcesRepository.findByUuid(announceUuid);

        if(announce.isPresent()){
            return ok(announce);
        } else {
            return ResponseEntity.badRequest().body(genericError.formatError("ANNOUNCE_FIND_BY_UUID","FR"));
        }
    }

    /**
     * Get all but also manage pagination query param only)
     * @param page
     * @return
     */
    public ResponseEntity getAll(int page){
        // e.g for sort :         Pageable pageable = PageRequest.of(0, 20, Sort.by("firstName"));
        // Pageable pageable = PageRequest.of(0, 20, Sort.by("fistName").ascending().and(Sort.by("lastName").descending());

        Pageable pageable = PageRequest.of(page,  Integer.parseInt(resultPerPage));

            return ResponseEntity.ok().body(genericSuccess.formatSuccess(announcesRepository.findAll(pageable)));
    }



    public ResponseEntity addAnimalsType(AnnouncesAnimalsType announcesAnimalsType, String uuid){

        // todo -> DUPLICATE array animalsType in response (postman) ?
        // TODO -> make route for postman (nginx side)
        // TODO -> dumpé la DB (many to many changement) majeur

        Optional<Announces> announcesOptional = announcesRepository.findByUuid(uuid);
        ArrayList<Long> ids = announcesAnimalsType.getAnimalsTypeIds(); // POJO for body POST (array of long)

        if(announcesOptional.isPresent()){

            List<AnimalsType> animalsTypes = announcesOptional.get().getAnimalsType(); // get current animalsType list from announce
            // remove current entries
            animalsTypes.clear();


            for(Long id : ids){
                if(this.animalsTypeRepository.findById(id).isPresent()){
                    animalsTypes.add(this.animalsTypeRepository.findById(id).get());
                } else {
                    return badRequest().body(genericError.formatError("ANIMALS_TYPE_BY_ID", "FR"));
                }
            }

            // if every id are found for animalsType only
            announcesRepository.save(announcesOptional.get());
            return ok(announcesOptional.get());
        } else {
            return badRequest().body(genericError.formatError("ANNOUNCE_FIND_BY_UUID","FR"));
        }
    }

}
