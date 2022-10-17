package com.example.springtp.exception;

public class ContactNotFoundException extends RuntimeException {
    public ContactNotFoundException(long id) {
        super("Contact with id " + id + " does not exist");
    }
}
