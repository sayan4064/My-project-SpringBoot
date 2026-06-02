package com.codehunt.myproject.dto;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "services")
@NoArgsConstructor
@Data
@AllArgsConstructor
@Builder
public class ServiceEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;
    @Column(length = 50)
    private String title;

    @Column(length = 100)
    private String description;
    @Column(length = 300)
    private String image;
    @Column(length = 50)
    private String dateTime;
}
