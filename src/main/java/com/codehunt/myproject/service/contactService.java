package com.codehunt.myproject.service;

import com.codehunt.myproject.dto.ContactDto;
import com.codehunt.myproject.dto.contactEntity;

public interface contactService {
    contactEntity saveContact(ContactDto contactDto);
    boolean existsByEmail(String email);
}
