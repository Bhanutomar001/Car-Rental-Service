package com.carrentalapplication.dao;

import com.carrentalapplication.dto.CarRegistration;
import com.carrentalapplication.mapper.CarRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GetAllRegCarListDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public List<CarRegistration> getAllRegCarsService(){
        System.out.println(5);

        String query = "SELECT * FROM car_info";

        System.out.println(6);

        return jdbcTemplate.query(query, new CarRowMapper());
        }


    }

