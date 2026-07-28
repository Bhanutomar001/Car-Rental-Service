package com.carrentalapplication.service;

import com.carrentalapplication.dto.UserSignupRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class SignupService {
    @Autowired
    private RestTemplate restTemplate;
    public  Object signup(UserSignupRequest request){

        String url="http://localhost:8080/signup";

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity<UserSignupRequest> entity = new HttpEntity<>(request, headers);


        return restTemplate.postForObject(url, entity, String.class);
    }
}