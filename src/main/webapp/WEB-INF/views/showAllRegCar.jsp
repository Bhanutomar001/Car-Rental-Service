<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Registered Cars - Car Rental System</title>

    <!-- Google Fonts & Font Awesome Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        * {
            font-family: 'Inter', sans-serif;
        }

        body {
            background-color: #f0f4f8;
            font-size: 13.5px;
            padding: 30px 15px;
        }

        .main-card {
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(15, 23, 42, 0.08);
            border: 1px solid #e2e8f0;
            overflow: hidden;
        }

        .card-header-custom {
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            color: #ffffff;
            padding: 24px 30px;
        }

        .card-header-custom h3 {
            font-size: 20px;
            font-weight: 700;
            margin: 0;
        }

        .card-header-custom p {
            font-size: 13px;
            color: #94a3b8;
            margin: 4px 0 0 0;
        }

        .table-responsive {
            max-height: 70vh;
            overflow-y: auto;
        }

        .table {
            margin-bottom: 0;
        }

        .table thead th {
            background-color: #f8fafc;
            color: #334155;
            font-weight: 600;
            font-size: 12.5px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            white-space: nowrap;
            padding: 14px 12px;
            border-bottom: 2px solid #e2e8f0;
            position: sticky;
            top: 0;
            z-index: 10;
        }

        .table tbody td {
            padding: 12px;
            white-space: nowrap;
            color: #0f172a;
            vertical-align: middle;
        }

        .table-hover tbody tr:hover {
            background-color: #f1f5f9;
        }

        .badge-plate {
            background-color: #1e293b;
            color: #f8fafc;
            font-family: monospace;
            font-size: 12px;
            padding: 6px 10px;
            border-radius: 6px;
            letter-spacing: 1px;
        }

        .badge-fuel {
            background-color: #eff6ff;
            color: #2563eb;
            font-weight: 600;
            padding: 5px 8px;
            border-radius: 6px;
        }

        .btn-register {
            background-color: #2563eb;
            color: #ffffff;
            font-weight: 600;
            border-radius: 8px;
            padding: 8px 16px;
            text-decoration: none;
            transition: all 0.2s ease;
        }

        .btn-register:hover {
            background-color: #1d4ed8;
            color: #ffffff;
        }
    </style>
</head>
<body>
<form action="getAllCarsFromdataBase" method="post">

<div class="container-fluid max-width-container">

    <div class="main-card">
        <!-- Header Section -->
        <div class="card-header-custom d-flex justify-content-between align-items-center flex-wrap gap-3">
            <div>
                <h3><i class="fa-solid fa-car-side me-2"></i> All Registered Vehicles</h3>
                <p>Complete list of cars and associated driver information from database</p>
            </div>
            <div>
                <a href="carReg" class="btn-register btn-sm d-inline-flex align-items-center gap-2">
                    <i class="fa-solid fa-plus"></i> Register New Car
                </a>
            </div>
        </div>

        <!-- Table Section -->
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover table-bordered align-middle text-center mb-0">
                    <thead>
                        <tr>
                            <th>User ID</th>
                            <th>Email Id</th>
                            <th>Brand</th>
                            <th>Model</th>
                            <th>Type</th>
                            <th>Year</th>
                            <th>Colour</th>
                            <th>Fuel</th>
                            <th>Transmission</th>
                            <th>Seats</th>
                            <th>Mileage</th>
                            <th>Number Plate</th>
                            <th>Insurance Date</th>
                            <th>RC Number</th>
                            <th>Driver Name</th>
                            <th>Driver Number</th>
                            <th>Driver Aadhaar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${not empty allCarsList}">
                                <c:forEach var="car" items="${allCarsList}">
                                    <tr>
                                        <td class="fw-bold text-muted">${car.id}</td>
                                          <td>${car.emailId}</td>
                                        <td class="fw-semibold">${car.carBrand}</td>
                                        <td>${car.modelName}</td>
                                        <td>${car.vehicleType}</td>
                                        <td>${car.manufacturingYear}</td>
                                        <td>${car.colour}</td>
                                        <td><span class="badge-fuel">${car.fuelType}</span></td>
                                        <td>${car.transmissionType}</td>
                                        <td>${car.seatingCapacity}</td>
                                        <td>${car.mileage}</td>
                                        <td><span class="badge-plate">${car.numberPlate}</span></td>
                                        <td>${car.insuranceDate}</td>
                                        <td>${car.rcNumber}</td>
                                        <td class="fw-semibold text-primary">${car.driverName}</td>
                                        <td>${car.driverNumber}</td>
                                        <td>${car.driverAadhaar}</td>
                                    </tr>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <tr>
                                    <td colspan="16" class="text-center py-5">
                                        <div class="text-danger fw-bold fs-6">
                                            <i class="fa-solid fa-circle-exclamation fs-4 mb-2"></i><br>
                                            No car records found in database!
                                        </div>
                                    </td>
                                </tr>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</form>
</body>
</html>