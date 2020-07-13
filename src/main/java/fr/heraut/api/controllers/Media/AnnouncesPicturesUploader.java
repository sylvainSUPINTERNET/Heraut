package fr.heraut.api.controllers.Media;


import fr.heraut.api.services.Media.AnnouncesPicturesUploaderService;
import fr.heraut.api.services.Media.UserPictureUploaderService;
import org.apache.tomcat.util.codec.binary.Base64;
import org.apache.tomcat.util.codec.binary.StringUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

@RestController
@RequestMapping("/v1/media")
public class AnnouncesPicturesUploader {

    public AnnouncesPicturesUploaderService announcesPicturesUploaderService;
    public UserPictureUploaderService userPictureUploaderService;


    AnnouncesPicturesUploader(AnnouncesPicturesUploaderService announcesPicturesUploaderServic, UserPictureUploaderService userPictureUploaderService){
        this.announcesPicturesUploaderService = announcesPicturesUploaderServic;
        this.userPictureUploaderService = userPictureUploaderService;
    }


    @PostMapping("/user/picture")
    public ResponseEntity handleFileUploadUser(@RequestParam("picture") MultipartFile file, @RequestParam("userId") String id,
                                           RedirectAttributes redirectAttributes) {
        return userPictureUploaderService.upload(id, file);
    }

    @PostMapping("/announce/picture")
    public ResponseEntity handleFileUpload(@RequestParam("picture") MultipartFile file, @RequestParam("announceId") String id,
                                           RedirectAttributes redirectAttributes) {
        return announcesPicturesUploaderService.upload(id, file);
    }


}
