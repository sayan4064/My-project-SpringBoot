package com.codehunt.myproject.dto;

import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ContactDto {

    @NotBlank(message = "Name cannot be empty")
    @Size(min = 3, max = 50, message = "Name must be between 3 and 50 characters")
    private String name;

    @NotBlank(message = "Email cannot be empty")
    @Email(message = "Please enter a valid email address")
    private String email;

    @NotBlank(message = "Subject cannot be empty")
    @Size(min = 5, max = 100, message = "Subject must be between 5 and 100 characters")
    private String subject;

    @NotBlank(message = "Message cannot be empty")
    @Size(min = 10, max = 500, message = "Message must be between 10 and 500 characters")
    private String message;

}
