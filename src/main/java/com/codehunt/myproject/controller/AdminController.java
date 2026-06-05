package com.codehunt.myproject.controller;


import com.codehunt.myproject.dto.ContactDto;
import com.codehunt.myproject.dto.ServiceDto;
import com.codehunt.myproject.dto.ServiceEntity;
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
    @DeleteMapping("/deleteById")
    public String deleteById(@RequestParam int id){
        contactService.deleteContactById(id);
        return "redirect:/admin/readallQuery";
    }
    @GetMapping("/readallQuery")
    public String readallQuery(Model model){
        model.addAttribute("contacts", contactService.readAllContacts());
        return "admin/readallQuery";
    }


        @GetMapping("/saveServices")
        public String saveServices(){
                return "admin/addadminService";
        }

        @PostMapping("/saveServices")
        public String saveServices(@Valid @ModelAttribute ServiceDto serviceDto, BindingResult bindingResult ,
                                   Model model, RedirectAttributes redirectAttributes) throws IOException {

                if(bindingResult.hasErrors()){
                        model.addAttribute("result","Invalid Input");
                        model.addAttribute("errors",bindingResult.getFieldErrors());
                        return "admin/addadminService";
                }
                if(serviceDto.getImage()==null || serviceDto.getImage().isEmpty()){
                        model.addAttribute("error","Image is Empty");
                        return "admin/addadminService";
                }

                MultipartFile file = serviceDto.getImage();
                long fileSize = file.getSize();
                if(fileSize >(2*1024*1024) ){
                    model.addAttribute("fileError","File Size must not Exceed 2MB");
                    return  "admin/addadminService";
                }

                String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();

                Path uploadPath = Paths.get(System.getProperty("user.dir"), "src", "main", "webapp", "img", "services");
                File dir = uploadPath.toFile();
                if (!dir.exists()) {
                    dir.mkdirs();
                }

                Path path = uploadPath.resolve(fileName);
                try {
                    file.transferTo(path.toFile());
                } catch (IOException e) {
                    model.addAttribute("error", "Failed to save file: " + e.getMessage());
                    return "admin/addadminService";
                }

                try {
                    serviceService.saveService(serviceDto, fileName);
                } catch (Exception e) {
                    File uploadedFile = path.toFile();
                    if (uploadedFile.exists()) {
                        uploadedFile.delete();
                    }
                    model.addAttribute("error", "Database save failed: " + e.getMessage());
                    return "admin/addadminService";
                }

                redirectAttributes.addFlashAttribute("message", "Service uploaded successfully");
                return "redirect:/admin/saveServices";
        }

        @GetMapping("/readallServices")
        public String readallServices(Model model){

                model.addAttribute("services", serviceService.getAllServices());
                return "admin/readadminServices";
        }

        @DeleteMapping("/deleteByIdService")
        public String deleteByIdService(@RequestParam int id){
                serviceService.deleteService(id);
                return "redirect:/admin/readallServices";
        }

        @GetMapping("/updateService")
        public String updateServices(@RequestParam int id, Model model){
            ServiceEntity service = serviceService.getServiceById(id);
            if (service == null) {
                return "redirect:/admin/readallServices";
            }
            model.addAttribute("service", service);
            
            ServiceDto serviceDto = new ServiceDto();
            serviceDto.setTitle(service.getTitle());
            serviceDto.setDescription(service.getDescription());
            model.addAttribute("serviceDto", serviceDto);
            
            return "admin/updateadminService";
        }

        @PostMapping("/updateService")
        public String updateServicesbyId(@Valid @ModelAttribute ServiceDto serviceDto, BindingResult bindingResult ,
                                         @RequestParam int id, Model model, RedirectAttributes redirectAttributes) throws IOException {

            if(bindingResult.hasErrors()){
                model.addAttribute("result","Invalid Input");
                model.addAttribute("errors",bindingResult.getFieldErrors());
                
                ServiceEntity service = serviceService.getServiceById(id);
                model.addAttribute("service", service);
                return "admin/updateadminService";
            }

            MultipartFile file = serviceDto.getImage();
            String fileName = null;
            Path path = null;
            
            if (file != null && !file.isEmpty()) {
                long fileSize = file.getSize();
                if(fileSize > (2*1024*1024) ){
                    model.addAttribute("fileError","File Size must not Exceed 2MB");
                    ServiceEntity service = serviceService.getServiceById(id);
                    model.addAttribute("service", service);
                    return "admin/updateadminService";
                }
                fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();
                Path uploadPath = Paths.get(System.getProperty("user.dir"), "src", "main", "webapp", "img", "services");
                File dir = uploadPath.toFile();
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                path = uploadPath.resolve(fileName);
                try {
                    file.transferTo(path.toFile());
                } catch (IOException e) {
                    model.addAttribute("error", "Failed to save file: " + e.getMessage());
                    ServiceEntity service = serviceService.getServiceById(id);
                    model.addAttribute("service", service);
                    return "admin/updateadminService";
                }
            }

            try {
                serviceService.updateService(serviceDto, id, fileName);
            } catch (Exception e) {
                if (path != null) {
                    File uploadedFile = path.toFile();
                    if (uploadedFile.exists()) {
                        uploadedFile.delete();
                    }
                }
                model.addAttribute("error", "Database save failed: " + e.getMessage());
                ServiceEntity service = serviceService.getServiceById(id);
                model.addAttribute("service", service);
                return "admin/updateadminService";
            }

            redirectAttributes.addFlashAttribute("message", "Service updated successfully");
            return "redirect:/admin/readallServices";
        }

        @GetMapping("/uploadResume")
        public String uploadResume(){
            return "admin/uploadResume";
        }

        @PostMapping("/uploadResume")
        public String handleUploadResume(@RequestParam("resume") MultipartFile file,
                                         RedirectAttributes redirectAttributes, Model model) throws IOException {
            if (file.isEmpty()) {
                model.addAttribute("error", "Please select a file to upload");
                return "admin/uploadResume";
            }
            
            long fileSize = file.getSize();
            if (fileSize > (5 * 1024 * 1024)) {
                model.addAttribute("error", "File size must not exceed 5MB");
                return "admin/uploadResume";
            }
            
            String originalFilename = file.getOriginalFilename();
            if (originalFilename == null || !originalFilename.toLowerCase().endsWith(".pdf")) {
                model.addAttribute("error", "Only PDF files are allowed (.pdf)");
                return "admin/uploadResume";
            }

            Path uploadPath = Paths.get(System.getProperty("user.dir"), "src", "main", "webapp", "docs");
            File dir = uploadPath.toFile();
            if (!dir.exists()) {
                dir.mkdirs();
            }

            Path path = uploadPath.resolve("resume.pdf");
            try {
                file.transferTo(path.toFile());
            } catch (IOException e) {
                model.addAttribute("error", "Failed to save resume file: " + e.getMessage());
                return "admin/uploadResume";
            }

            redirectAttributes.addFlashAttribute("message", "Resume uploaded successfully");
            return "redirect:/admin/uploadResume";
        }

}
