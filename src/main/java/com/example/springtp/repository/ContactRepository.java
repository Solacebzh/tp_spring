package com.example.springtp.repository;

import com.example.springtp.repository.entity.Contact;
import com.sun.javafx.beans.IDProperty;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContactRepository extends CrudRepository<Contact,Long> {
    List<Contact> findContactByLastNameContaining(String lastName);
}
