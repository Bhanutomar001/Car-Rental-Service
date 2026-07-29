package com.carrentalapplication.controller;

import com.carrentalapplication.service.SignupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {
    @GetMapping("/indexPage")
    public String homeController() {
        return "index";
    }

    @GetMapping("/signup")
    public String signupController() {

        return "userSignup";
    }


    @GetMapping("/login")
    public String loginController() {

        return "userLogin";
    }

        @GetMapping("/carReg")
        public String showCarRegistrationPage() {
            return "addCar";
        }
}