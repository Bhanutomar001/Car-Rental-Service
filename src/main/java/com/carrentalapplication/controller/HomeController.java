package com.carrentalapplication.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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

        @GetMapping("/carRegistration")
        public String showCarRegistrationPage() {

        return "addCar";
        }

        @GetMapping("/delete")
        public String DeleteUserAccount(){
        return "userDelete";
        }


        @GetMapping("/carListOfUser")
       public String checkcarListOfPerUser(){
        return "checkUserCarList";
        }

    @GetMapping("/getAllCarList")
    public String getAllCarList(){
        System.out.println(1);



        return "showAllRegCar";

    }
}