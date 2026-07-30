package com.carrentalapplication.dto;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserSignupRequest {
    private int userId;
    private String emailId;
    private String password;
    private String firstName;
    private String lastName;
    private String gender;
    private String dob;
    private int age;
    private Long mobNo;
    private String country;
    private String city;
    private String address;
    private int pincode;
    private String aadharNumber;
    private String userType;
}
