package com.carrentalapplication.controller;


import com.carrentalapplication.dao.GetAllRegCarListDao;
import com.carrentalapplication.dto.CarRegistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;


@Controller
public class showAllRegCarsController {
    @Autowired
    private GetAllRegCarListDao getAllRegCarListDao;
    @GetMapping("/getAllCarsFromdataBase")
    public String getAllRegCarList(Model model ){
        System.out.println(2);

        List<CarRegistration> carList = getAllRegCarListDao.getAllRegCarsService();
        System.out.println(3);

        model.addAttribute("allCarsList", carList);
        System.out.println(4);

        return "showAllRegCar";
    }
}
