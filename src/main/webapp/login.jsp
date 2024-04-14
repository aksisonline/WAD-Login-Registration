<%@ page import="com.example.wadlogin.DatabaseService" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
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
                alert('Login failed. Please try again.');
            }
        }
    </script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Login</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about.jsp">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="login.jsp">Login</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container d-flex align-items-center justify-content-center" style="height: 100%;">
    <div>
        <h2>Login Page</h2>
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="uname"><b>Username</b></label>
                <input type="text" class="form-control" placeholder="Enter Username" name="uname" id="uname" required>
            </div>

            <div class="form-group">
                <label for="psw"><b>Password</b></label>
                <input type="password" class="form-control" placeholder="Enter Password" name="psw" id="psw" required>
            </div>

            <button type="submit" class="btn btn-primary">Login</button>
            <div>
                <span class="psw">Don't have an account? <a href="register.jsp">Register.</a></span>
            </div>

        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>