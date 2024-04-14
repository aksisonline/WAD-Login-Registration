package com.example.wadlogin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private final DatabaseService databaseService = new DatabaseService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("uname");
        String password = request.getParameter("psw");

        if (databaseService.login(username, password)) {
            User user = databaseService.getUserDetails(username);
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp?error=true");
        }
    }
}