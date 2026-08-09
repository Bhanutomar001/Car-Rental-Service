package com.carrentalapplication.service;

import com.carrentalapplication.dao.CarDao;
import com.carrentalapplication.dto.CarRegistration;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImple implements CarService {
    @Autowired
    private CarDao carDao;

    @Override
    public boolean registerCar(CarRegistration carDto) {

        CarRegistration cr = new CarRegistration();

        BeanUtils.copyProperties(carDto, cr);

        CarRegistration saveddao = carDao.save(cr);

        return saveddao.getId() != null;
    }
}
