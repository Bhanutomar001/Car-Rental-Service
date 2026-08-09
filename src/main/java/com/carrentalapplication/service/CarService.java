package com.carrentalapplication.service;

import com.carrentalapplication.dto.CarRegistration;
import org.springframework.stereotype.Service;


public interface CarService {
    boolean registerCar(CarRegistration carDto);
}
