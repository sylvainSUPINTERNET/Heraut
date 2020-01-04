package fr.heraut.api.services.Annonces;


import com.sun.org.apache.xpath.internal.operations.Bool;
import fr.heraut.api.POJO.AnnouncesAnimalsType;
import fr.heraut.api.models.AnimalsType;
import fr.heraut.api.models.Announces;
import fr.heraut.api.models.User;
import fr.heraut.api.repositories.AnimalsTypeRepository;
import fr.heraut.api.repositories.AnnouncesRepository;
import fr.heraut.api.repositories.UserRepository;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.security.Principal;
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
    UserRepository userRepository;

    EntityManager em;


    @Value("${pagination.announces.result.per.page}")
    String resultPerPage;

    AnnouncesService(AnnouncesRepository announcesRepository, GenericError genericError, AnimalsTypeRepository animalsTypeRepository, GenericSuccess genericSuccess, UserRepository userRepository) {
        this.announcesRepository = announcesRepository;
        this.genericError = genericError;
        this.animalsTypeRepository = animalsTypeRepository;
        this.genericSuccess = genericSuccess;
        this.userRepository = userRepository;
    }


        public ResponseEntity create(Announces announces, Principal principal) {
        Optional<User> optionalUser = userRepository.findByEmail(principal.getName());

            if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            announces.setUser(user);
            //System.out.println(" - - - - - - -- -");
            //System.out.println(announcesRepository
              //      .save(announces).getId());
            //System.out.println(announces.getAnimalsType());
            // TODO -> passer par un pojo -> Problem ici -> inifnite loop
            announcesRepository.save(announces);

            System.out.println(announces.getUser());
            return ok(announces);
        } else {
            return badRequest().body("User not exist.");
        }

    }

    public ResponseEntity count() {
        return ok(announcesRepository.countByActive());
    }

    public ResponseEntity getOne(String announceUuid) {
        Optional<Announces> announce = announcesRepository.findByUuid(announceUuid);

        if (announce.isPresent()) {
            return ok(announce);
        } else {
            return ResponseEntity.badRequest().body(genericError.formatError("ANNOUNCE_FIND_BY_UUID", "FR"));
        }
    }

    /**
     * Get all but also manage pagination query param only)
     *
     * @param page
     * @return
     */
    public ResponseEntity getAll(int page) {
        // e.g for sort :         Pageable pageable = PageRequest.of(0, 20, Sort.by("firstName"));
        // Pageable pageable = PageRequest.of(0, 20, Sort.by("fistName").ascending().and(Sort.by("lastName").descending());

        Pageable pageable = PageRequest.of(page, Integer.parseInt(resultPerPage));

        return ResponseEntity.ok().body(genericSuccess.formatSuccess(announcesRepository.findAll(pageable)));
    }


    // Params : AnimalType Service Dept
    public ResponseEntity getAnnouncesBySearchQuery(String servicesIdStr, String animalsTypeIdStr, String dept, String pageNb) {
        int page = Integer.parseInt(pageNb); // already checked by RequestParam (require dtrue by defualt) else return 400

        // filters
        long servicesId = 0;
        long animalsTypeId = 0;
        String department = "";

        if (!servicesIdStr.isEmpty()) {
            try {
                servicesId = Long.parseLong(servicesIdStr);
            } catch (NumberFormatException ignored) {
                return badRequest().body("bad request servicesId");
            }
        }

        if (!animalsTypeIdStr.isEmpty()) {
            try {
                animalsTypeId = Long.parseLong(animalsTypeIdStr);
            } catch (NumberFormatException ignored) {
                return badRequest().body("bad request animalsTypeId");
            }
        }

        if (!dept.isEmpty()) {
            department = dept;
        }


        Pageable pageable = PageRequest.of(page, Integer.parseInt(resultPerPage));

        // filters :


        //services + animals + dept ( + page)
        if (servicesId != 0 && animalsTypeId != 0 && !department.equals("")) {
            return ok(this.announcesRepository.findAllByQueryAnimalsTypeServiceDeptAndPopulate(servicesId, animalsTypeId, dept, pageable));
        }

        // animals + dept ( + page)
        else if (servicesId == 0 && animalsTypeId != 0 && !department.equals("")) {
            return ok(this.announcesRepository.findAllByQueryAnimalsTypeDeptAndPopulate(animalsTypeId, dept, pageable));
        }

        // services + dept  ( + page)
        else if (servicesId != 0 && animalsTypeId == 0 && !department.equals("")) {
            return ok(this.announcesRepository.findAllByQueryServiceDeptAndPopulate(servicesId, dept, pageable));
        }

        // services + animals ( + page )
        else if (servicesId != 0 && animalsTypeId != 0 && department.equals("")) {
            return ok(this.announcesRepository.findAllByQueryServiceAnimalsTypeAndPopulate(servicesId, animalsTypeId, pageable));
        }

        // services
        else if (servicesId != 0 && animalsTypeId == 0 && department.equals("")) {
            return ok(announcesRepository.findAllByQueryServiceAndPopulate(servicesId, pageable));
        }
        // animals
        else if (servicesId == 0 && animalsTypeId != 0 && department.equals("")) {
            return ok(this.announcesRepository.findAllByQueryAnimalTypeAndPopulate(animalsTypeId, pageable));
        }

        // dept
        else if (servicesId == 0 && animalsTypeId == 0 && !department.equals("")) {
            return ok(this.announcesRepository.findAllByQueryDeptAndPopulate(department, pageable));
        }

        // page only
        else if (servicesId == 0 && animalsTypeId == 0 && department.equals("")) {
            return ok(this.announcesRepository.findAll(pageable));
        } else {
            // error
            return badRequest().body(genericError.formatErrorWithHttpVerb("ANNOUNCE_LIST_BAD_QUERY_PARAMS", "FR", HttpStatus.BAD_REQUEST));
        }
    }

    public ResponseEntity addAnimalsType(AnnouncesAnimalsType announcesAnimalsType, String uuid) {

        // todo -> DUPLICATE array animalsType in response (postman) ?
        // TODO -> make route for postman (nginx side)
        // TODO -> dumpé la DB (many to many changement) majeur

        Optional<Announces> announcesOptional = announcesRepository.findByUuid(uuid);
        ArrayList<Long> ids = announcesAnimalsType.getAnimalsTypeIds(); // POJO for body POST (array of long)

        if (announcesOptional.isPresent()) {

            List<AnimalsType> animalsTypes = announcesOptional.get().getAnimalsType(); // get current animalsType list from announce
            // remove current entries
            animalsTypes.clear();


            for (Long id : ids) {
                if (this.animalsTypeRepository.findById(id).isPresent()) {
                    animalsTypes.add(this.animalsTypeRepository.findById(id).get());
                } else {
                    return badRequest().body(genericError.formatError("ANIMALS_TYPE_BY_ID", "FR"));
                }
            }

            // if every id are found for animalsType only
            announcesRepository.save(announcesOptional.get());
            return ok(announcesOptional.get());
        } else {
            return badRequest().body(genericError.formatError("ANNOUNCE_FIND_BY_UUID", "FR"));
        }
    }

}
