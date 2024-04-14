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

<%
    User user = (User) session.getAttribute("user");
    if (user != null) {
%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.jsp">Welcome <%= user.getFirstName()%>! </a>
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