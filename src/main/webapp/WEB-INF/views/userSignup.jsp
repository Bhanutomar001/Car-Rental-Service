
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration</title>
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

        .signup-container {
            background: #ffffff;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 700px; /* Do boxes ke liye perfect width */
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 26px;
            font-weight: 700;
        }

        /* Yeh row dono boxes ko ek line me lata hai */
        .form-row {
            display: flex;
            gap: 20px;
            margin-bottom: 18px;
        }

        /* Har box ko barabar 50%-50% space deta hai */
        .form-group {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        /* Sirf Address ke liye full width */
        .full-width {
            width: 100%;
            margin-bottom: 18px;
        }

        label {
            font-size: 14px;
            color: #555;
            margin-bottom: 6px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"] {
            width: 100%;
            padding: 11px 14px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            outline: none;
            transition: all 0.3s ease;
            background: #fcfcfc;
        }

        input:focus {
            border-color: #007bff;
            box-shadow: 0 0 6px rgba(0, 123, 255, 0.2);
            background: #fff;
        }

        button[type="submit"] {
            width: 100%;
            padding: 14px;
            background: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
            margin-top: 10px;
        }

        button[type="submit"]:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2>Create Account</h2>

    <form action="userSignup" method="post">

        <div class="form-row">
            <div class="form-group">
                <label>First Name</label>
                <input type="text" name="fname" placeholder="Enter first name" required>
            </div>
            <div class="form-group">
                <label>Last Name</label>
                <input type="text" name="lname" placeholder="Enter last name" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" placeholder="example@gmail.com" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="••••••••" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label>Mobile Number</label>
                <input type="text" name="mobilenumber" placeholder="9876543210" required>
            </div>
            <div class="form-group">
                <label>Date of Birth</label>
                <input type="date" name="dob" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label>Gender</label>
                <input type="text" name="gender" placeholder="Male / Female" required>
            </div>
            <div class="form-group">
                <label>City</label>
                <input type="text" name="city" placeholder="Indore" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label>Pin Code</label>
                <input type="text" name="pincode" placeholder="452001" required>
            </div>
            <div class="form-group">
            </div>
        </div>

        <div class="form-group full-width">
            <label>Address</label>
            <input type="text" name="address" placeholder="Flat, Street, Area, Landmark" required>
        </div>

        <button type="submit">Register Here</button>

    </form>
</div>

</body>
</html>
