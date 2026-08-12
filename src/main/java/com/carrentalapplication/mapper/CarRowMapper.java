package com.carrentalapplication.mapper;



import com.carrentalapplication.dto.CarRegistration;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CarRowMapper implements RowMapper<CarRegistration> {

    @Override
    public CarRegistration mapRow(ResultSet rs, int rowNum) throws SQLException {
        CarRegistration car = new CarRegistration();
        System.out.println(7);

        car.setId(rs.getLong("user_id"));
        car.setCarBrand(rs.getString("carBrand"));
        car.setModelName(rs.getString("modelName"));
        car.setVehicleType(rs.getString("vehicleType"));
        car.setManufacturingYear(rs.getString("manufYear"));
        car.setColour(rs.getString("colour"));
        car.setFuelType(rs.getString("fuelType"));
        car.setTransmissionType(rs.getString("transmissionType"));
        car.setSeatingCapacity(rs.getString("seatingCapcity"));
        car.setMileage(rs.getString("mileage"));
        car.setNumberPlate(rs.getString("numberPlate"));
        car.setInsuranceDate(rs.getString("insuranceDate"));
        car.setRcNumber(rs.getString("rcNumber"));
        car.setDriverName(rs.getString("driverName"));
        car.setDriverNumber(rs.getString("driverNumber"));
        car.setDriverAadhaar(rs.getString("driverAadhaar"));
        System.out.println(8);

        System.out.println(car);
        return car;
    }
}