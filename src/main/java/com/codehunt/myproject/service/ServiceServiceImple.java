package com.codehunt.myproject.service;

import com.codehunt.myproject.dto.ServiceDto;
import com.codehunt.myproject.dto.ServiceEntity;
import com.codehunt.myproject.repository.ServiceRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
@Service
public class ServiceServiceImple implements ServiceService{
    @Autowired
    private ServiceRepository serviceRepository;
    @Autowired
    private ModelMapper modelMapper;

    @Override
    public ServiceEntity saveService(ServiceDto serviceDto,String filename) {
       ServiceEntity serviceEntity= modelMapper.map(serviceDto,ServiceEntity.class);
        serviceEntity.setImage(filename);
        serviceEntity.setDateTime(LocalDateTime.now().toString());
        return serviceRepository.save(serviceEntity);
    }

    @Override
    public java.util.List<ServiceEntity> getAllServices() {

        return serviceRepository.findAll();
    }

    @Override
    public void deleteService(int id) {
        ServiceEntity serviceEntity = serviceRepository.findById(id).orElse(null);
        if (serviceEntity != null) {
            String imageName = serviceEntity.getImage();
            
            // delete from database first
            serviceRepository.delete(serviceEntity);
            
            // delete from filesystem only if database delete succeeds
            if (imageName != null && !imageName.isEmpty()) {
               Path uploadPath = Paths.get(System.getProperty("user.dir"), "src", "main", "webapp", "img", "services");
                File file = new File(uploadPath.toFile(), imageName);
                if (file.exists()) {
                    file.delete();
                }
            }
        }
    }

    @Override
    public ServiceEntity updateService(ServiceDto serviceDto, int id, String filename) {
        ServiceEntity serviceEntity = serviceRepository.findById(id).orElse(null);
        if (serviceEntity != null) {
            // Delete old file and update image only if a new image was uploaded
            if (filename != null && !filename.isEmpty()) {
                String oldImageName = serviceEntity.getImage();
                if (oldImageName != null && !oldImageName.isEmpty()) {
                    Path uploadPath = Paths.get(System.getProperty("user.dir"), "src", "main", "webapp", "img", "services");
                    File file = new java.io.File(uploadPath.toFile(), oldImageName);
                    if (file.exists()) {
                        file.delete();
                    }
                }
                serviceEntity.setImage(filename);
            }
            serviceEntity.setTitle(serviceDto.getTitle());
            serviceEntity.setDescription(serviceDto.getDescription());
            serviceEntity.setDateTime(LocalDateTime.now().toString());
            return serviceRepository.save(serviceEntity);
        }
        return null;
    }

    @Override
    public ServiceEntity getServiceById(int id) {
        return serviceRepository.findById(id).orElse(null);
    }
}
