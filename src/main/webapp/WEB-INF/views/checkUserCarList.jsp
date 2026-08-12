<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Car List</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
        }

        body {
            background-color: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .card {
            background: #ffffff;
            width: 100%;
            max-width: 1100px; /* Expanded for full table width */
            padding: 35px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.08);
        }

        .card-header {
            text-align: center;
            margin-bottom: 25px;
        }

        .card-header h2 {
            color: #1a252f;
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 6px;
        }

        .card-header p {
            color: #6c757d;
            font-size: 14px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-size: 14px;
            font-weight: 500;
            color: #333333;
        }

        .form-group input {
            width: 100%;
            padding: 12px 14px;
            border: 1px solid #ced4da;
            border-radius: 6px;
            font-size: 14px;
            color: #495057;
            transition: border-color 0.2s ease, box-shadow 0.2s ease;
            outline: none;
        }

        .form-group input:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 3px rgba(13, 110, 253, 0.15);
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            background-color: #0d6efd;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.2s ease, transform 0.1s ease;
            margin-top: 5px;
        }

        .btn-submit:hover {
            background-color: #0b5ed7;
        }

        .btn-submit:active {
            transform: scale(0.99);
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer a {
            color: #6c757d;
            font-size: 13px;
            text-decoration: none;
            transition: color 0.2s ease;
        }

        .form-footer a:hover {
            color: #0d6efd;
            text-decoration: underline;
        }

        .error-msg {
            background-color: #f8d7da;
            color: #721c24;
            padding: 10px;
            border-radius: 6px;
            margin-bottom: 20px;
            text-align: center;
            font-size: 14px;
            border: 1px solid #f5c6cb;
        }

        /* Responsive Table styling for wide data view */
        .table-responsive {
            width: 100%;
            overflow-x: auto;
            margin-top: 25px;
            border: 1px solid #dee2e6;
            border-radius: 8px;
        }

        .result-table {
            width: 100%;
            border-collapse: collapse;
            white-space: nowrap;
        }

        .result-table th, .result-table td {
            padding: 12px 14px;
            border: 1px solid #dee2e6;
            text-align: center;
            font-size: 13.5px;
        }

        .result-table th {
            background-color: #0d6efd;
            color: white;
            font-weight: 600;
            position: sticky;
            top: 0;
        }

        .result-table tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        .badge-plate {
            background-color: #212529;
            color: #ffffff;
            font-family: monospace;
            padding: 4px 8px;
            border-radius: 4px;
            letter-spacing: 0.5px;
        }

        .badge-fuel {
            background-color: #e7f1ff;
            color: #0c63e4;
            font-weight: 600;
            padding: 4px 8px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<form action="carList" method="post">
    <div class="card">
        <div class="card-header">
            <h2>Check Car List Of User</h2>
            <p>Search registered vehicles by driver details or phone number</p>
        </div>

        <!-- Error Message Display -->
        <c:if test="${not empty errorMessage}">
            <div class="error-msg">
                ${errorMessage}
            </div>
        </c:if>

        <form action="carList" method="post" autocomplete="off">
            <div class="form-group">
                <label for="driverName">Check By Driver Name</label>
                <input type="text" id="driverName" name="driverName" value="${param.driverName}" placeholder="Enter Driver Name">
            </div>

            <div class="form-group">
                <label for="emailId">Check By Driver Number / Email</label>
                <input type="text" id="emailId" name="emailId" value="${param.emailId}" placeholder="Enter Driver Number or Email">
            </div>

            <button type="submit" class="btn-submit">Search Vehicle</button>
        </form>

        <c:if test="${not empty carList}">
            <div class="table-responsive">
                <table class="result-table">
                    <thead>
                        <tr>
                            <th>User ID</th>
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
                            <th> Email Id</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="car" items="${carList}">
                            <tr>
                                <td><strong>${car.id}</strong></td>
                                <td>${car.carBrand}</td>
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
                                <td style="color: #0d6efd; font-weight: 600;">${car.driverName}</td>
                                <td>${car.driverNumber}</td>
                                <td>${car.driverAadhaar}</td>
                                <td>${car.emailId}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>

        <div class="form-footer">
            <a href="javascript:history.back()">← Back to Dashboard</a>
        </div>
    </div>
</form>
</body>
</html>