package com.carrentalapplication.controller;

import com.carrentalapplication.dto.UserSignupRequest;
import com.carrentalapplication.service.SignupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class UserSignupController {
    @Autowired
    public SignupService signupservice;
    @PostMapping("/userSignup")
    public String userSignup(@ModelAttribute UserSignupRequest request) {
        System.out.println("Received First Name: " + request.getFirstName());
        signupservice.signup(request);

        if ("Hoster".equalsIgnoreCase(request.getUserType())) {
            return "redirect:/carReg";
        }
        return "redirect:/login";
    }
}
