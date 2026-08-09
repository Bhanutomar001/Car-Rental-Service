package com.carrentalapplication.service;

import com.carrentalapplication.dto.UserSignupRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class LoginService {

    @Autowired
    private RestTemplate restTemplate;

    public String loginUser(UserSignupRequest request) {

        System.out.println("Checking User Login3");

        String url = "http://localhost:8080/userdetails/" + request.getEmailId() + "/" + request.getPassword();
        System.out.println("Checking User Login4");

        System.out.println( request.getEmailId() );
        System.out.println( request.getPassword() );

        return restTemplate.getForObject(url, String.class);


    }
}