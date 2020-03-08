package fr.heraut.api.controllers.Media;


import fr.heraut.api.services.Media.AnnouncesPicturesUploaderService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@RestController
@RequestMapping("/v1/media")
public class AnnouncesPicturesUploader {

    public AnnouncesPicturesUploaderService announcesPicturesUploaderService;

    AnnouncesPicturesUploader(AnnouncesPicturesUploaderService announcesPicturesUploaderServic){
        this.announcesPicturesUploaderService = announcesPicturesUploaderServic;
    }

    @PostMapping("/")
    public String handleFileUpload(@RequestParam("picture") MultipartFile file,
                                   RedirectAttributes redirectAttributes) {


        // TODO : get the file and store the picture into nosql or mongo database (configure the mongo / sqlite db in docker !)

        return "todo";
    }





}
