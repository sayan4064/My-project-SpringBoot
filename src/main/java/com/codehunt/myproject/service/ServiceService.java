package com.codehunt.myproject.service;

import com.codehunt.myproject.dto.ServiceDto;
import com.codehunt.myproject.dto.ServiceEntity;

public interface ServiceService {

        ServiceEntity saveService(ServiceDto  serviceDto,String filename);


}
