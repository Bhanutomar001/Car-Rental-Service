package com.carrentalapplication.dao;

import com.carrentalapplication.dto.CarRegistration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CarDao extends JpaRepository<CarRegistration, Long> {

}


