package fr.heraut.api.controllers.Media;


import fr.heraut.api.services.Media.AnnouncesPicturesUploaderService;
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


    AnnouncesPicturesUploader(AnnouncesPicturesUploaderService announcesPicturesUploaderServic){
        this.announcesPicturesUploaderService = announcesPicturesUploaderServic;
    }

    @PostMapping("/announce/picture")
    public ResponseEntity handleFileUpload(@RequestParam("picture") MultipartFile file, @RequestParam("announceId") String id,
                                           RedirectAttributes redirectAttributes) {

        return announcesPicturesUploaderService.upload(id, file);

        /*
        if(!file.isEmpty() && !id.isEmpty()){
            try {
                Blob blob = new javax.sql.rowset.serial.SerialBlob(file.getBytes());
                System.out.println(blob);
                return blob.toString();
            } catch (SQLException e) {
                e.printStackTrace();
                return "error sql";
            } catch (IOException e) {
                e.printStackTrace();
                return "error bytes";
            }


        } else {
            return "empty file";
        }*/
    }





}
