package com.restaurentmanagement.controller;

import com.restaurentmanagement.model.User;
import com.restaurentmanagement.service.UserService;
import com.restaurentmanagement.validations.UserValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    UserValidation userValidation;
    

    @GetMapping("/register")
    public String register(Model model){
        model.addAttribute("user",new User());
        return "UserSignUp";
    }

    @PostMapping("/addUser")
    public String addUser(@Validated @ModelAttribute User user, BindingResult bindingResult, Model model){

        userValidation.validate(user,bindingResult);

        if(bindingResult.hasErrors()){
            return "UserSignUp";
        }

        userService.addUser(user);
        model.addAttribute("user1","one record is successfully added");
        return "LoginAndSignUp";
    }
}
