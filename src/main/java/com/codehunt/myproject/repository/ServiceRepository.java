package com.codehunt.myproject.repository;

import com.codehunt.myproject.dto.ServiceEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceRepository extends JpaRepository<ServiceEntity,Integer> {
}
