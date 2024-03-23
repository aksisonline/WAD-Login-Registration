package com.example.wadlogin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RegistryServlet")
public class RegistryServlet extends HttpServlet {
    private final DatabaseService databaseService = new DatabaseService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String phoneNumber = request.getParameter("phone");
        String rollNo = request.getParameter("rollno");
        String username = request.getParameter("uname");
        String password = request.getParameter("psw");

        boolean registerSuccess = databaseService.register(firstName, lastName, phoneNumber, rollNo, username, password);

        if (registerSuccess) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("register.jsp?error=true");
        }
    }
}