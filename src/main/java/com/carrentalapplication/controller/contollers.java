//package com.carrentalapplication.controller;
//
//import com.carrentalapplication.dto.CarRegistration;
//import com.carrentalapplication.dto.UserSignupRequest;
//import com.carrentalapplication.service.CarService;
//import com.carrentalapplication.service.SignupService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//
//@Controller
//
//public class contollers {
//    @Autowired
//    public SignupService signupservice;
//
//    @Autowired
//    public CarService carservice;
//
//
//    @GetMapping("/login")
//    public String loginController() {
//
//        return "userLogin";
//    }
//
//////    @PostMapping("/signup")
////@GetMapping("/signup")
////    public String userSignup(@ModelAttribute UserSignupRequest request) {
////        System.out.println("Received First Name: " + request.getFirstName());
////        signupservice.signup(request);
////
////        if ("Hoster".equalsIgnoreCase(request.getUserType())) {
////            return "redirect:/carReg";
////        }
////        return "redirect:/login";
////    }
//
//
//    @PostMapping("/carReg")
//    public String carRegistration(@ModelAttribute CarRegistration carInfo, Model model) {
//        System.out.println("Received Form Data Brand: " + carInfo.getCarBrand() + ", : " + carInfo.getModelName());
//        boolean isSuccess = carservice.registerCar(carInfo);
//        System.out.println("Is Saved in DB? : " + isSuccess);
//        if (isSuccess) {
//            model.addAttribute("message", "Car Details Registered Successfully!");
//        } else {
//            model.addAttribute("error", "Failed to Register Car. Please try again.");
//        }
//        return "addCar";
//    }
//}