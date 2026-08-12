package com.carrentalapplication.dto;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Entity
@Table(name = "carInfo")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CarRegistration {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;
    public String carBrand;
    public String modelName;
    public String vehicleType;
    public String manufacturingYear;
    public String colour;
    public String fuelType;
    public String transmissionType;
    public String seatingCapacity;
    public String mileage;
    public String numberPlate;
    public String insuranceDate;
    public String rcNumber;
    public String driverName;
    public String driverNumber;
    public String driverAadhaar;

}
