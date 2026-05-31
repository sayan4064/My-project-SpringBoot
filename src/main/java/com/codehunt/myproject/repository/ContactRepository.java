package com.codehunt.myproject.repository;

import com.codehunt.myproject.dto.contactEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactRepository extends JpaRepository<contactEntity,Integer> {

}
