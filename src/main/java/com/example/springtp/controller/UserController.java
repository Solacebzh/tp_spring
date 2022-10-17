package com.example.springtp.controller;

import com.example.springtp.controller.dto.CreateUser;
import com.example.springtp.controller.dto.UpdateContact;
import com.example.springtp.controller.dto.UpdateUser;
import com.example.springtp.repository.entity.Contact;
import com.example.springtp.repository.entity.User;
import com.example.springtp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.NoSuchElementException;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/signin")
    public String displaySigninForm(Model m){
        m.addAttribute("command",new CreateUser());
        return "signinForm";
    }

    @GetMapping("/signup")
    public String displayRegistrationForm(Model m){
        m.addAttribute("createUser",new CreateUser());
        return "registerView";
    }

    @PostMapping("/signup")
    public String signUp(@Valid CreateUser createUser, BindingResult result, Model m){
        if(result.hasErrors()){
            m.addAttribute("command",createUser);
            return "registerView";
        }else{
            userService.register(createUser);
            return "redirect:/signin";
        }
    }

    @GetMapping("/signup/{mail}")
    public String updateContactForm(Model model, @PathVariable(value="mail") String mail){
        User user = userService.getUserByMail(mail);
        model.addAttribute("createUser", user);
        return "registerView";
    }
}
