
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car Rental Application</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .welcome-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            text-align: center;
        }

        .welcome-container h4 {
            color: #7f8c8d;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .welcome-container h2.main-title {
            color: #2c3e50;
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 30px;
            line-height: 1.2;
        }

        .btn-group {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-top: 20px;
        }

        .btn {
            display: block;
            padding: 14px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 6px;
            text-decoration: none;
            transition: all 0.3s ease;
            text-align: center;
        }

        .btn-signup {
            background: #007bff;
            color: white;
            border: 2px solid #007bff;
        }

        .btn-signup:hover {
            background: #0056b3;
            border-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0, 123, 255, 0.2);
        }

        .btn-login {
            background: transparent;
            color: #007bff;
            border: 2px solid #007bff;
        }

        .btn-login:hover {
            background: rgba(0, 123, 255, 0.05);
            transform: translateY(-2px);
        }
    </style>
</head>
<body>

<div class="welcome-container">
    <h4>Welcome To</h4>
    <h2 class="main-title">Car Rental<br>Application</h2>

    <div class="btn-group">
        <a href="signup" class="btn btn-signup">Create Account</a>

        <a href="login" class="btn btn-login">Login Here</a>

        <a href="delete"  class="btn btn-delete">Delete Your Account</a>

        <a href="carRegistration"  class="btn btn-carRegistration">Register Your Car</a>

        <a href="carListOfUser"  class="btn btn-carListOfUser">Check User Car</a>

    </div>
</div>

</body>
</html>