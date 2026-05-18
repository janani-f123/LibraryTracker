package com.library.dao;

import java.sql.*;

public class DBConnection {

    private static final String URL =
        "jdbc:sqlserver://localhost:1433;databaseName=library_db;encrypt=true;trustServerCertificate=true";

    private static final String USER = "admin";   
    private static final String PASSWORD = "12345";

    public static Connection getConnection() throws Exception {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}