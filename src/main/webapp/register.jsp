<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.wadlogin.RegistryServlet" %>
<html>
<head>
    <title>Register</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%;
        }
    </style>
    <script>
        window.onload = function() {
            var urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('error')) {
                alert('Registration failed. Username already exists.');
            }
        }
    </script>
</head>
<body>
<div class="container d-flex align-items-center justify-content-center" style="height: 100%;">
    <div>
        <h1>Register</h1>
        <form action="RegistryServlet" method="post" class="form-group">
            <label for="fname">First Name:</label>
            <input type="text" name="fname" id="fname" class="form-control" required><br>

            <label for="lname">Last Name:</label>
            <input type="text" name="lname" id="lname" class="form-control" required><br>

            <label for="phone">Phone Number:</label>
            <input type="text" name="phone" id="phone" class="form-control" required><br>

            <label for="rollno">Roll No:</label>
            <input type="text" name="rollno" id="rollno" class="form-control" required><br>

            <label for="uname">Username:</label>
            <input type="text" name="uname" id="uname" class="form-control" required><br>

            <label for="psw">Password:</label>
            <input type="password" name="psw" id="psw" class="form-control" required><br>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>