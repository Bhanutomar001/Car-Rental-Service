package com.carrentalapplication.controller;

import com.carrentalapplication.dto.UserSignupRequest;
import com.carrentalapplication.service.SignupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class SignupContoller {
    @Autowired
    public SignupService signupservice;

    @PostMapping("/userSignup")
    public String userSignup(@ModelAttribute UserSignupRequest request) {
        System.out.println("Received First Name: " + request.getFirstName());
        Object response = signupservice.signup(request);
        return "redirect:/login";
//
//        if (userType.equalsIgnoreCase(request.getUserType())) {
//            return "redirect://carReg";
        }
    }
