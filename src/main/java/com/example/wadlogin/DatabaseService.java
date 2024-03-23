package com.example.wadlogin;

import java.sql.*;

public class DatabaseService {
    private static final String DB_URL = "jdbc:postgresql://dpg-cno5r2ect0pc73ddn100-a.oregon-postgres.render.com:5432/reg_list";
    private static final String USER = "reg_list_user";
    private static final String PASS = "s3RS4tC91Hw7AwgPj1rYU20PkKxtKwFr";

    public boolean login(String username, String password) {
        String query = "SELECT * FROM table_name WHERE username = ? AND password = ?";

        try {
            Class.forName("org.postgresql.Driver");
            try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
                 PreparedStatement stmt = conn.prepareStatement(query)) {

                stmt.setString(1, username);
                stmt.setString(2, password);

                try (ResultSet rs = stmt.executeQuery()) {
                    return rs.next();
                }

            } catch (SQLException e) {
                System.out.println("SQL Exception: " + e.getMessage());
            }
        } catch (ClassNotFoundException e) {
            System.out.println("PostgreSQL JDBC Driver not found. Include it in your library path.");
            e.printStackTrace();
        }
        return false;
    }

    public boolean register(String firstName, String lastName, String phoneNumber, String rollNo, String username, String password) {
        String query = "INSERT INTO table_name (firstname, lastname, phonenumber, rollno, username, password) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            Class.forName("org.postgresql.Driver");
            try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
                 PreparedStatement stmt = conn.prepareStatement(query)) {

                stmt.setString(1, firstName);
                stmt.setString(2, lastName);
                stmt.setString(3, phoneNumber);
                stmt.setString(4, rollNo);
                stmt.setString(5, username);
                stmt.setString(6, password);

                return stmt.executeUpdate() > 0;

            } catch (SQLException e) {
                System.out.println("SQL Exception: " + e.getMessage());
            }
        } catch (ClassNotFoundException e) {
            System.out.println("PostgreSQL JDBC Driver not found. Include it in your library path.");
            System.out.println(e.getMessage());
        }
        return false;
    }

    public User getUserDetails(String username) {
        String query = "SELECT * FROM table_name WHERE username = ?";

        try {
            Class.forName("org.postgresql.Driver");
            try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
                 PreparedStatement stmt = conn.prepareStatement(query)) {

                stmt.setString(1, username);

                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        User user = new User();
                        user.setFirstName(rs.getString("firstname"));
                        user.setLastName(rs.getString("lastname"));
                        user.setPhoneNumber(rs.getString("phonenumber"));
                        user.setRollNo(rs.getString("rollno"));
                        return user;
                    }
                }

            } catch (SQLException e) {
                System.out.println("SQL Exception: " + e.getMessage());
            }
        } catch (ClassNotFoundException e) {
            System.out.println("PostgreSQL JDBC Driver not found. Include it in your library path.");
            e.printStackTrace();
        }
        return null;
    }

}