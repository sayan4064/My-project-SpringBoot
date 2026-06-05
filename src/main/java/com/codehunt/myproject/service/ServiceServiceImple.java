package com.codehunt.myproject.service;

import com.codehunt.myproject.dto.ServiceDto;
import com.codehunt.myproject.dto.ServiceEntity;
import com.codehunt.myproject.repository.ServiceRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
            
            // Delete from database first
            serviceRepository.delete(serviceEntity);
            
            // Delete from filesystem only if database delete succeeds
            if (imageName != null && !imageName.isEmpty()) {
                java.nio.file.Path uploadPath = java.nio.file.Paths.get(System.getProperty("user.dir"), "src", "main", "webapp", "img", "services");
                java.io.File file = new java.io.File(uploadPath.toFile(), imageName);
                if (file.exists()) {
                    file.delete();
                }
            }
        }
    }
}
