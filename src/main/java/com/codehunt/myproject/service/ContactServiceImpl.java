package com.codehunt.myproject.service;

import com.codehunt.myproject.dto.ContactDto;
import com.codehunt.myproject.dto.contactEntity;
import com.codehunt.myproject.repository.ContactRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class ContactServiceImpl implements contactService {
    @Autowired
    ContactRepository contactRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public contactEntity saveContact(ContactDto contactDto) {
//            contactEntity contactEntity = new contactEntity();
//            contactEntity.setName(contactDto.getName());
//            contactEntity.setEmail(contactDto.getEmail());
//            contactEntity.setSubject(contactDto.getSubject());
//            contactEntity.setMessage(contactDto.getMessage());
//            contactEntity.setDatetime(LocalDateTime.now().toString());

        contactEntity contactEntity = modelMapper.map(contactDto, contactEntity.class);
        contactEntity.setDatetime(LocalDateTime.now().toString());
        return contactRepository.save(contactEntity);
    }

    @Override
    public boolean existsByEmail(String email) {
        return contactRepository.existsByEmail(email);
    }
}
