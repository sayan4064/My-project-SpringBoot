package com.codehunt.myproject.exception;

import jakarta.servlet.http.HttpServletRequest;
import lombok.experimental.StandardException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(Exception.class)
    public String handleException(Exception exception, RedirectAttributes redirectAttributes, HttpServletRequest request){
           String header=request.getHeader("referer");

        redirectAttributes.addFlashAttribute("message", "Something went wrong ");
            return "redirect:"+header;


        }

}
