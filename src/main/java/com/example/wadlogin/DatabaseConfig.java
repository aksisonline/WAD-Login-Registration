package com.example.wadlogin;

public class DatabaseConfig {
    public static final String DB_URL = "${{ secrets.DB_URL }}";
    public static final String USER = "${{ secrets.DB_USER }}";
    public static final String PASS = "${{ secrets.DB_PASS }}";
}
