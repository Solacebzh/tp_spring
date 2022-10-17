package com.example.springtp.controller;

import com.example.springtp.controller.dto.CreateContact;
import com.example.springtp.controller.dto.UpdateContact;
import com.example.springtp.repository.entity.Contact;
import com.example.springtp.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;

@Controller
@RequestMapping("/contacts")
public class ContactController {

    private ContactService contactService;

    private ContactController(ContactService contactService){
        this.contactService = contactService;

    }

    @GetMapping("/all")
    public String displayAllContact(Model model, @RequestParam(value ="search",required = false) String searchValue){
        if(searchValue !=null){
            List<Contact> contactList= contactService.searchContactByName(searchValue);
            model.addAttribute("contacts",contactList);
            model.addAttribute("searchTitle",contactList);
        }else{
            List<Contact> contactList= contactService.getAllContacts();
            model.addAttribute("contacts",contactList);
        }
        /* return la jsp*/
        return "contactListView";
    }

    @GetMapping("/addContactForm")
    public String showContactForm(Model m){
        m.addAttribute("command",new CreateContact());
        return "addContactForm";
    }

    @PostMapping(value="/save")
    public String save(@ModelAttribute("contact") CreateContact createContact){
        contactService.addContact(createContact);

        return "redirect:/contacts/all";
    }

    @PostMapping(value="/edit")
    public String editSave(@ModelAttribute("contact") UpdateContact updateContact){
        contactService.editContact(updateContact);
        return "redirect:/contacts/all";
    }

    @RequestMapping(value="/editContact/{id}")
    public String edit(@PathVariable long id, Model m){
        Contact contact=contactService.getDetailContact(id);
        m.addAttribute("command",contact);
        return "editContactForm";
    }

    @GetMapping("/details/{id}")
    public String displaySpecificContact(Model model,@PathVariable("id") long id){
        try{
            Contact contact= contactService.getDetailContact(id);
            model.addAttribute("contact",contact);
            return "contactView";
        } catch(NoSuchElementException e){
            return "redirect:/contacts/all";
        }
    }

    @GetMapping("/deleteContact/{id}")
    public String delete(@PathVariable int id){
        contactService.deleteContact(id);
        return "redirect:/contacts/all";
    }
}
