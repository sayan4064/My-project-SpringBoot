package com.codehunt.myproject.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ServiceDto {


    @Size(min = 3, max = 100, message = "Title must be between 3 and 100 characters")
    private String title;


    @Size(min = 10, max = 500, message = "Description must be between 10 and 500 characters")
    private String description;

    private MultipartFile image;
}
