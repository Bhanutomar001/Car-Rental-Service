package com.carrentalapplication.dao;

import com.carrentalapplication.dto.CarRegistration;
import com.carrentalapplication.mapper.CarRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CheckCarListDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public List<CarRegistration> findCarByNameAndEmail(String driverName, String emailId){
        String query = "SELECT * FROM car_Info WHERE driver_name = ? OR email_id= ?";

        return jdbcTemplate.query(query,  new CarRowMapper(), driverName, emailId);

    }
}
