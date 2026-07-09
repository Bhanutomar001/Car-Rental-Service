
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
<h2>Create account</h2><br><br>
  <form action="userSignup" method ="post">

    <lable>Frist Name</lable>:
    <input type="text" name="fname"><br><br>

    <lable>Last Name</lable>:
    <input type="text" name="lname"><br><br>

    <lable>Email</lable>:
    <input type="email" name="email"><br><br>

    <lable>Password</lable>:
    <input type="password" name="password"><br><br>

    <lable>Mobile Number</lable>
    <input type="text" name="mobilenumber"><br><br>

    <lable>DOB</lable>
    <input type="date" name="dob"><br><br>

   <lable>Gender</lable>
    <input type="text" name="gender"><br><br>

    <lable>City</lable>
    <input type="text" name="city"><br><br>

    <lable>Address</lable>
    <input type="text" name="address"><br><br>

    <lable>PinCode</lable>
    <input type="text" name="pincode"><br><br>

    <button type="submit">Register Here</button>

  </form>
</body>
</html>
