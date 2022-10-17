package com.example.springtp.service;

import com.example.springtp.controller.dto.CreateUser;

import com.example.springtp.controller.dto.UpdateContact;
import com.example.springtp.controller.dto.UpdateUser;
import com.example.springtp.exception.ContactNotFoundException;
import com.example.springtp.repository.UserRepository;
import com.example.springtp.repository.entity.Contact;
import com.example.springtp.repository.entity.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private UserRepository userRepository;

    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    public void register(CreateUser createUser){
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        User newUser = new User();
        newUser.setEmail(createUser.getEmail());
        newUser.setPassword(passwordEncoder.encode(createUser.getPassword()));
        newUser.setFirstName(createUser.getFirstName());
        newUser.setLastName(createUser.getLastName());
        newUser.setPictureUrl(createUser.getPictureUrl());
        this.userRepository.save(newUser);
    }

    public void editUser(UpdateUser updateUser){
        User user = updateUser.toUser();
        this.userRepository.save(user);
    }

    public User getUserByMail(String mail) {
        return userRepository.findByEmail(mail);
    }
}
