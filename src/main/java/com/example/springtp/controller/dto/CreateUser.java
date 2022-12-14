package com.example.springtp.controller.dto;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class CreateUser {
    private Long id;
    @NotNull
    private String email;
    @NotNull
    @Size(min=1, message="password don't work")
    private String password;

    private String pictureUrl;

    private String lastName;

    private String firstName;

    public CreateUser() {
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

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
