package com.carrentalapplication.controller;

import com.carrentalapplication.dao.CheckCarListDao;
import com.carrentalapplication.dto.CarRegistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class CheckUserCarListController {
    @Autowired
    private CheckCarListDao checkCarListDao;
 @PostMapping("/carList")
   public String checkCarListOfPerUser(CarRegistration car, Model model) {

     List<CarRegistration> carList=checkCarListDao.findCarByNameAndNumber(car.getDriverName(), car.getNumberPlate());

     if(carList != null && !carList.isEmpty()){
         model.addAttribute("carList", carList);

     }else{
         model.addAttribute("errorMessage","No Car Available from this number and name");

     }
     return "checkUserCarList";
 }
}
