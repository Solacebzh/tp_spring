package com.example.springtp.controller.dto;

import com.example.springtp.repository.entity.Contact;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class UpdateContact {
    private Long id;
    private String firstName;

    private String lastName;

    private String company;

    private String function;

    private String email;

    private String phoneNumber;

    private LocalDate birthday;

    private String pictureUrl;

    private String note;

    public UpdateContact() {
    }

    public Contact toContact(){
        Contact c = new Contact();
        c.setId(this.id);
        c.setFirstName(this.firstName);
        c.setLastName(this.lastName);
        c.setBirthday(this.birthday);
        c.setCompany(this.company);
        c.setFunction(this.function);
        c.setEmail(this.email);
        c.setNote(this.note);
        c.setPhoneNumber(this.phoneNumber);
        c.setPictureUrl(this.pictureUrl);
        return c;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
