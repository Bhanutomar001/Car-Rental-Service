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
            max-width: 500px;
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

        /* Message & Table Styling */
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

        .result-table {
            width: 100%;
            margin-top: 25px;
            border-collapse: collapse;
        }

        .result-table th, .result-table td {
            padding: 10px;
            border: 1px solid #dee2e6;
            text-align: center;
            font-size: 14px;
        }

        .result-table th {
            background-color: #0d6efd;
            color: white;
            font-weight: 500;
        }

        .result-table tr:nth-child(even) {
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>

    <div class="card">
        <div class="card-header">
            <h2>Check Car List Of User</h2>
            <p>Search cars by driver details or vehicle registration number</p>
        </div>

        <!-- Displays Error Message if no records found -->
        <c:if test="${not empty errorMessage}">
            <div class="error-msg">
                ${errorMessage}
            </div>
        </c:if>

        <form action="carList" method="post" autocomplete="off">
            <div class="form-group">
                <label for="driverName">Check By Name</label>
                <input type="text" id="driverName" name="driverName" placeholder="Enter Driver Name">
            </div>

            <div class="form-group">
                <label for="numberPlate">Check By Car Number</label>
                <input type="text" id="numberPlate" name="numberPlate" placeholder="Enter Your Car Number">
            </div>

            <button type="submit" class="btn-submit">Search Vehicle</button>
        </form>

        <!-- Displays Result Table if carList is available -->
        <c:if test="${not empty carList}">
            <table class="result-table">
                <thead>
                    <tr>
                        <th>Driver Name</th>
                        <th>Car Number</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="car" items="${carList}">
                        <tr>
                            <td>${car.driverName}</td>
                            <td>${car.numberPlate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <div class="form-footer">
            <a href="javascript:history.back()">← Back to Dashboard</a>
        </div>
    </div>

</body>
</html>