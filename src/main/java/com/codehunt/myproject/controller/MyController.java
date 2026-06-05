package com.codehunt.myproject.controller;

import com.codehunt.myproject.dto.ContactDto;
import com.codehunt.myproject.service.contactService;
import com.codehunt.myproject.service.ServiceService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/client")
public class MyController {

    @Autowired
    contactService contactService;

    @Autowired
    ServiceService serviceService;

        @GetMapping("/index")
        public String home(Model model){
            model.addAttribute("services", serviceService.getAllServices());
            return "index";
        }

    @GetMapping("/about")
    public String about(){

        return "about";
    }

    @GetMapping("/service")
    public String service(Model model){
        model.addAttribute("services", serviceService.getAllServices());
        return "services";
    }

    @GetMapping("/contact")
    public String contact(){

        return "contact";
    }
    @PostMapping("/saveContact")
    public String saveContact(@Valid @ModelAttribute ContactDto contactDto, BindingResult bindingResult ,
                              Model model, RedirectAttributes redirectAttributes){
    if(bindingResult.hasErrors()){
        model.addAttribute("errors",bindingResult.getFieldErrors());
        return "contact";
    }

    if(contactService.existsByEmail(contactDto.getEmail())){
        model.addAttribute("emailErrors", "Email already exists");
        return "contact";
    }
    contactService.saveContact(contactDto);
    redirectAttributes.addFlashAttribute("message", "Message sent successfully");
        return "redirect:/client/contact";
    }

}
