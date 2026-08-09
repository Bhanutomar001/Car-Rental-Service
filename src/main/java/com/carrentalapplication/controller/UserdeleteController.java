package com.carrentalapplication.controller;

import com.carrentalapplication.dto.UserSignupRequest;
import com.carrentalapplication.service.DeleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserdeleteController {
    @Autowired
    public DeleteService deleteservice;
    @PostMapping("/userDelete")
  public String delete(UserSignupRequest request){
      String response = deleteservice.deleteUserService(request);
      System.out.println(response);
      System.out.println("Checking User Login2");



      if(response.equals("This email is deleted from databse:"+ request.getEmailId())){
          return "userSignup";
      } else if(response.equals("Please Enter Your Valid Email and Password")){
          return "userDelete";
      }
      return "addCar";
  }
}
