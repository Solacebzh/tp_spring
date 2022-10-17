package com.example.springtp.service;

import com.example.springtp.controller.dto.CreateContact;
import com.example.springtp.controller.dto.UpdateContact;
import com.example.springtp.exception.ContactNotFoundException;
import com.example.springtp.repository.ContactRepository;
import com.example.springtp.repository.entity.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class ContactService {

    private ContactRepository contactRepository;

   // @Autowired
    //private StorageService storageService;

    public ContactService(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public List<Contact> getAllContacts() {
        return (List<Contact>)this.contactRepository.findAll();
    }
    public Contact getDetailContact(long id) throws ContactNotFoundException {

        return this.contactRepository
                .findById(id)
                .orElseThrow(() -> new ContactNotFoundException(id));
    }

    public List<Contact> searchContactByName(String name) {
        return contactRepository.findContactByLastNameContaining(name);
    }

    public void addContact(CreateContact createContact){
        //MultipartFile picture = createBook.getPictureFile();


      /*  if(picture.isEmpty() || picture == null){
            book.setPictureUrl(createBook.getPictureUrl());
        }else{
            storageService.store(picture);
            book.setPictureUrl("http://localhost:8080/images/"+ picture.getOriginalFilename());
        }*/
        Contact contact = createContact.toContact();
        this.contactRepository.save(contact);
    }

    public void editContact(UpdateContact updateContact){
        Contact contact = updateContact.toContact();
        this.contactRepository.save(contact);
    }

    public void deleteContact(long id){
        contactRepository.deleteById(id);
    }
}
