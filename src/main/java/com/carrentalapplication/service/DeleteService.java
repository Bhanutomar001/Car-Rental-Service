package com.carrentalapplication.service;

import com.carrentalapplication.dto.UserSignupRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class DeleteService {
    @Autowired
    private RestTemplate restTemplate;
    public String deleteUserService(UserSignupRequest request){

        String url= "http://localhost:8080/" + request.getEmailId() + "/" + request.getPassword();

        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.DELETE, null, String.class);

        return response.getBody();
    }
}
