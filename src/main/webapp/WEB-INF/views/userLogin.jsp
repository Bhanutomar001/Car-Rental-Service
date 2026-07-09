
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Here</title>
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

        .login-container {
            background: #ffffff;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 650px; /* Width ko registration page jitna rakha h taaki symmetry bani rahe */
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 26px;
            font-weight: 700;
        }

        /* Dono boxes ko ek line me lane ke liye */
        .form-row {
            display: flex;
            gap: 20px;
            margin-bottom: 18px;
        }

        .form-group {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 14px;
            color: #555;
            margin-bottom: 6px;
            font-weight: 600;
        }

        input[type="email"],
        input[type="password"] {
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

        .signup-link {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            color: #666;
        }

        .signup-link a {
            color: #007bff;
            text-decoration: none;
            font-weight: 600;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Login Here</h2>

    <form action="userLogin" method="post">

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

        <button type="submit">Login Here</button>

        <div class="signup-link">
            Don't have an account? <a href="userSignup.jsp">Register Here</a>
        </div>

    </form>
</div>

</body>
</html>