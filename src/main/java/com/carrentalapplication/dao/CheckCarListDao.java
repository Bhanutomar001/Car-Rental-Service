package com.carrentalapplication.dao;

import com.carrentalapplication.dto.CarRegistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CheckCarListDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public List<CarRegistration> findCarByNameAndNumber(String driverName, String numberPlate){
        String query = "SELECT * FROM carInfo WHERE driverName = ? OR  numberPlate = ?";

        return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(CarRegistration.class), driverName, numberPlate);

    }
}
