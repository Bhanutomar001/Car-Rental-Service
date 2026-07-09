package com.carrentalapplication.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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


}