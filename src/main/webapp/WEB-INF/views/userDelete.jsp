<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
            max-width: 420px;
            padding: 35px 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
        }

        .card-header {
            text-align: center;
            margin-bottom: 25px;
        }

        .card-header h2 {
            color: #dc3545;
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .card-header p {
            color: #6c757d;
            font-size: 14px;
            line-height: 1.4;
        }

        .alert-box {
            background-color: #fff3cd;
            border-left: 4px solid #ffc107;
            color: #856404;
            padding: 12px 15px;
            border-radius: 6px;
            font-size: 13px;
            margin-bottom: 20px;
            line-height: 1.4;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-size: 14px;
            font-weight: 500;
            color: #333;
        }

        .form-group input {
            width: 100%;
            padding: 12px 14px;
            border: 1px solid #ced4da;
            border-radius: 6px;
            font-size: 14px;
            transition: border-color 0.2s ease, box-shadow 0.2s ease;
            outline: none;
        }

        .form-group input:focus {
            border-color: #dc3545;
            box-shadow: 0 0 0 3px rgba(220, 53, 69, 0.15);
        }

        .btn-delete {
            width: 100%;
            padding: 12px;
            background-color: #dc3545;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.2s ease, transform 0.1s ease;
            margin-top: 10px;
        }

        .btn-delete:hover {
            background-color: #c82333;
        }

        .btn-delete:active {
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
            color: #343a40;
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="card">
        <div class="card-header">
            <h2>Delete Your Account</h2>
            <p>Please confirm your email address and password to permanently remove your account.</p>
        </div>

        <div class="alert-box">
            <strong>Warning:</strong> This action is permanent and cannot be undone. All your data will be erased.
        </div>

        <form action="userDelete" method="post" autocomplete="off">
            <div class="form-group">
                <label for="emailId">Email Address</label>
                <input type="email" id="emailId" name="emailId" placeholder="example@gmail.com" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter Your Password" required>
            </div>

            <button type="submit" class="btn-delete">Delete Account permanently</button>
        </form>

        <div class="form-footer">
            <a href="javascript:history.back()">Never mind, take me back</a>
        </div>
    </div>

</body>
</html>