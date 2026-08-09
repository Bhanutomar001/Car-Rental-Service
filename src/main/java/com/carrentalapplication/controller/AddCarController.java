package com.carrentalapplication.controller;

import com.carrentalapplication.dto.CarRegistration;
import com.carrentalapplication.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AddCarController {
    @Autowired
    public CarService carservice;
    @PostMapping("/carReg")
    public String carRegistration(@ModelAttribute CarRegistration carInfo, Model model) {
        System.out.println("Received Form Data Brand: " + carInfo.getCarBrand() + ", : " + carInfo.getModelName());
        boolean isSuccess = carservice.registerCar(carInfo);
        if (isSuccess) {
            model.addAttribute("message", "Car Details Registered Successfully!");
        } else {
            model.addAttribute("error", "Failed to Register Car. Please try again.");
        }
        return "addCar";
    }
}
