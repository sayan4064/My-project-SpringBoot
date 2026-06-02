package com.codehunt.myproject.service;

import com.codehunt.myproject.dto.ContactDto;
import com.codehunt.myproject.dto.contactEntity;

import java.util.List;

public interface contactService {
    contactEntity saveContact(ContactDto contactDto);
    boolean existsByEmail(String email);

    List<contactEntity> readAllContacts();

    void deleteContactById(int id);
}
