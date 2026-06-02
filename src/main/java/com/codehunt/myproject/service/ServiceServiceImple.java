package com.codehunt.myproject.service;

import com.codehunt.myproject.dto.ServiceDto;
import com.codehunt.myproject.dto.ServiceEntity;
import com.codehunt.myproject.repository.ServiceRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDateTime;

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
}
