package com.codehunt.myproject.controller;


import com.codehunt.myproject.dto.ContactDto;
import com.codehunt.myproject.dto.ServiceDto;
import com.codehunt.myproject.service.contactService;
import com.codehunt.myproject.service.ServiceService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.util.UUID;

@Controller
@RequestMapping("/admin")
public class AdminController {

        @Autowired
        contactService contactService;

        @Autowired
        ServiceService serviceService;

        @GetMapping("/home")
        public String home(){

            return "admin/adminhome";
        }

        @GetMapping("/readallData")
        public String readallData(Model model){

                model.addAttribute("contacts", contactService.readAllContacts());
                return "admin/readalldata";
        }

        @DeleteMapping("/deleteById")
        public String deleteById(@RequestParam int id){
                contactService.deleteContactById(id);
          return "redirect:/admin/readallData";
        }
        @GetMapping("/saveServices")
        public String saveServices(){
                return "admin/adminService";
        }

        @PostMapping("/saveServices")
        public String saveServices(@Valid @ModelAttribute ServiceDto serviceDto, BindingResult bindingResult ,
                                   Model model, RedirectAttributes redirectAttributes) throws IOException {

                if(bindingResult.hasErrors()){
                        model.addAttribute("result","Invalid Input");
                        model.addAttribute("errors",bindingResult.getFieldErrors());
                        return "admin/adminService";
                }
                if(serviceDto.getImage()==null || serviceDto.getImage().isEmpty()){
                        model.addAttribute("error","Image is Empty");
                        return "admin/adminService";
                }

                MultipartFile file = serviceDto.getImage();
                long fileSize = file.getSize();
                if(fileSize >(2*1024*1024) ){
                    model.addAttribute("fileError","File Size must not Exceed 2MB");
                    return  "admin/adminService";
                }

                String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();

                String uploadDir = System.getProperty("user.dir")
                        + "/src/main/webapp/img/services";

                File dir = new File(uploadDir);
                if (!dir.exists()) {
                    dir.mkdirs();
                }

                Path path = Paths.get(uploadDir, fileName);
                file.transferTo(path.toFile());

                serviceService.saveService(serviceDto, fileName);

                redirectAttributes.addFlashAttribute("message", "Service uploaded successfully");
                return "redirect:/admin/saveServices";
        }
}
