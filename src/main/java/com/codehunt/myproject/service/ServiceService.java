package com.codehunt.myproject.service;

import com.codehunt.myproject.dto.ServiceDto;
import com.codehunt.myproject.dto.ServiceEntity;
import org.springframework.web.bind.annotation.RequestParam;

public interface ServiceService {

        ServiceEntity saveService(ServiceDto  serviceDto,String filename);

        java.util.List<ServiceEntity> getAllServices();

        void deleteService(int id);

        ServiceEntity updateService(ServiceDto serviceDto ,int id,String filename);

        ServiceEntity getServiceById(int id);
}
