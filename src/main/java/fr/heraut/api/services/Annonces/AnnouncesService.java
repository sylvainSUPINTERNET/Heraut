package fr.heraut.api.services.Annonces;


import fr.heraut.api.DTO.AnnouncesCreateDTO;
import fr.heraut.api.DTO.AnnouncesGetOneDTO;
import fr.heraut.api.DTO.AnnouncesUpdateIsActiveAndIsActiveMultipleDTO;
import fr.heraut.api.POJO.AnnouncesAnimalsType;
import fr.heraut.api.models.*;
import fr.heraut.api.repositories.*;
import fr.heraut.api.services.ResponseFormat.GenericError;
import fr.heraut.api.services.ResponseFormat.GenericSuccess;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
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
    AnnouncesGetOneDTO announcesGetOneDTO;
    AnnouncesCreateDTO announcesCreateDTO;
    ServicesRepository servicesRepository;
    EquipmentsRepository equipmentsRepository;

    EntityManager em;


    @Value("${pagination.announces.result.per.page}")
    String resultPerPage;

    AnnouncesService(AnnouncesRepository announcesRepository, GenericError genericError, AnimalsTypeRepository animalsTypeRepository, GenericSuccess genericSuccess, UserRepository userRepository, AnnouncesGetOneDTO announcesGetOneDTO, ServicesRepository servicesRepository, EquipmentsRepository equipmentsRepository) {
        this.announcesRepository = announcesRepository;
        this.genericError = genericError;
        this.animalsTypeRepository = animalsTypeRepository;
        this.genericSuccess = genericSuccess;
        this.userRepository = userRepository;
        this.announcesGetOneDTO = announcesGetOneDTO;
        this.servicesRepository = servicesRepository;
        this.equipmentsRepository = equipmentsRepository;
    }

    public ResponseEntity create(AnnouncesCreateDTO announcesCreateDTO, Principal principal){

        Optional<User> optionalUser = userRepository.findByEmail(principal.getName());
        boolean error = false;

        if(optionalUser.isPresent()) {
            User user = optionalUser.get();
            ArrayList<AnimalsType> animalsTypesList = new ArrayList<>();
            ArrayList<Services> servicesList = new ArrayList<>();
            ArrayList<Equipments> equipmentsList = new ArrayList<>();

            Announces announces = new Announces();

            if(!announcesCreateDTO.getAnimalsTypeIds().isEmpty()) {
                for(Long id : announcesCreateDTO.getAnimalsTypeIds()) {

                    Optional<AnimalsType> animalsTypeAnimals = animalsTypeRepository.findById(id);

                    animalsTypeAnimals.ifPresent(animalsTypesList::add);
                }
            } else {
                error = true;
            }

            if(!announcesCreateDTO.getServicesIds().isEmpty()){

                for(Long id : announcesCreateDTO.getServicesIds()) {

                    Optional<Services> services = servicesRepository.findById(id);

                    services.ifPresent(servicesList::add);
                }
            } else {
                error = true;
            }

            if(!announcesCreateDTO.getEquipmentsIds().isEmpty()) {

                for(Long id : announcesCreateDTO.getEquipmentsIds()) {

                    Optional<Equipments> equipments = equipmentsRepository.findById(id);

                    equipments.ifPresent(equipmentsList::add);
                }
            } else {
                error = true;
            }

            if(error){
                return ResponseEntity.ok().body("error set");
            } else {
                announces.setUser(user);
                announces.setAnimalsTypes(animalsTypesList);
                announces.setServices(servicesList);
                announces.setEquipments(equipmentsList);
                announces.setCity(announcesCreateDTO.getCity());
                announces.setDept(announcesCreateDTO.getDept());
                announces.setDescription(announcesCreateDTO.getDescription());
                announces.setTitle(announcesCreateDTO.getTitle());
                announces.setFarePerDay(announcesCreateDTO.getFarePerDay());
                announces.setFarePerMonth(announcesCreateDTO.getFarePerMonth());
                announces.setFarePerHour(announcesCreateDTO.getFarePerHour());
                announces.setStreetAddress(announcesCreateDTO.getStreetAddress());
                announces.setPicture(null);

                announcesRepository.save(announces);

                return ResponseEntity.ok().body(announces);
            }

        } else {
            return ResponseEntity.badRequest().body("User not found");
        }
    }

    /*
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

     */


    public ResponseEntity count() {
        return ok(announcesRepository.countByActive());
    }

    public ResponseEntity getOne(String announceUuid) {
        Optional<Announces> announce = announcesRepository.findByUuid(announceUuid);

        if (announce.isPresent()) {
            ModelMapper modelMapper = new ModelMapper();
            AnnouncesGetOneDTO formatted = modelMapper.map(announce.get(), AnnouncesGetOneDTO.class);
            return ok(formatted);
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

        return ResponseEntity.ok().body(genericSuccess.formatSuccess(announcesRepository.findAllByOrderByCreatedAtDesc(pageable)));
    }

    public ResponseEntity updateActiveAndMultipleActive(
            AnnouncesUpdateIsActiveAndIsActiveMultipleDTO announcesUpdateIsActiveAndIsActiveMultipleDTO,
            String announceUuid,
            Principal principal){

        Optional<Announces> optionalAnnounce = announcesRepository.findByUuid(announceUuid);

        if(optionalAnnounce.isPresent()) {

            String annUserEmail = optionalAnnounce.get().getUser().getEmail();
            if(annUserEmail.equals(principal.getName())) {

                if(announcesUpdateIsActiveAndIsActiveMultipleDTO.getActive() != null) {
                    optionalAnnounce.get().setActive(announcesUpdateIsActiveAndIsActiveMultipleDTO.getActive());
                }

                if(announcesUpdateIsActiveAndIsActiveMultipleDTO.getMultipleActive() != null) {
                    optionalAnnounce.get().setActiveMultiple(announcesUpdateIsActiveAndIsActiveMultipleDTO.getMultipleActive());
                }

                announcesRepository.save(optionalAnnounce.get());

                return genericSuccess.formatSuccess(optionalAnnounce.get());
            } else {
                return genericError.formatErrorWithHttpVerb("ANNOUNCE_UPDATE_UNAUTHORIZED","FR", HttpStatus.UNAUTHORIZED);
            }
        } else {
            return genericError.formatErrorWithHttpVerb("ANNOUNCE_FIND_BY_UUID","FR",HttpStatus.BAD_REQUEST);
        }
    }

    public ResponseEntity getAnnouncesByUserId(Principal principal){
        Optional<User> user = userRepository.findByEmail(principal.getName());

        if(user.isPresent()) {
             List<Announces> announcesList = user.get().getAnnounces();
            return genericSuccess.formatSuccess(announcesList);
        } else {
            // return error
            return genericError.formatErrorWithHttpVerb("ANNOUNCE_BY_USERID","FR", HttpStatus.BAD_REQUEST);
        }
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
