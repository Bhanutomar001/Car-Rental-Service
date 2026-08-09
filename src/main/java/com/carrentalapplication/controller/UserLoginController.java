package com.carrentalapplication.controller;

import com.carrentalapplication.dto.UserSignupRequest;
import com.carrentalapplication.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserLoginController {
    @Autowired
    public LoginService loginservice;

    @PostMapping("/userLogin")
    public String login(@ModelAttribute UserSignupRequest request) {
        System.out.println("Checking User Login1");
        String response = loginservice.loginUser(request);
        System.out.println("Checking User Login2");

        // Welcome you are login successfully
        // Please enter your valid email and password

        if(response.equals("Welcome you are login successfully")){
            return "addCar";
        } else if(response.equals("Please enter your valid email and password")){
            return "userLogin";
        }
        return "userLogin";
    }
 }
