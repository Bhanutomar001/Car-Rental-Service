package com.carrentalapplication.mapper;



import com.carrentalapplication.dto.CarRegistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CarRowMapper implements RowMapper<CarRegistration> {
@Autowired
    private CarRegistration car;
    @Override
    public CarRegistration mapRow(ResultSet rs, int rowNum) throws SQLException {
        CarRegistration car = new CarRegistration();
        System.out.println(7);

        car.setId(rs.getLong("id"));
        car.setEmailId(rs.getString("email_id"));
        car.setCarBrand(rs.getString("car_brand"));
        car.setModelName(rs.getString("model_name"));
        car.setVehicleType(rs.getString("vehicle_type"));
        car.setManufacturingYear(rs.getString("manufacturing_year"));
        car.setColour(rs.getString("colour"));
        car.setFuelType(rs.getString("fuel_type"));
        car.setTransmissionType(rs.getString("transmission_type"));
        car.setSeatingCapacity(rs.getString("seating_capacity"));
        car.setMileage(rs.getString("mileage"));
        car.setNumberPlate(rs.getString("number_plate"));
        car.setInsuranceDate(rs.getString("insurance_date"));
        car.setRcNumber(rs.getString("rc_number"));
        car.setDriverName(rs.getString("driver_name"));
        car.setDriverNumber(rs.getString("driver_number"));
        car.setDriverAadhaar(rs.getString("driver_aadhaar"));
        System.out.println(8);

        System.out.println(car);
        return car;
    }
}