<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.wadlogin.User" %>
<html>
<head>
    <title>Success!</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%;
        }
    </style>
</head>
<body>
<div class="container d-flex align-items-center justify-content-center" style="height: 100%;">
    <div>
        <%
            User user = (User) session.getAttribute("user");
            if (user != null) {
        %>
        <h1><%= user.getFirstName() + " " + user.getLastName() %></h1>
        <h3>Phone Number: <%= user.getPhoneNumber() %></h3>
        <h3>Roll No: <%= user.getRollNo() %></h3>
        <%
            }
        %>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>