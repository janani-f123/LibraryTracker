package com.library.dao;

import java.sql.*;

public class DBConnection {

    private static final String URL =
        "dbc:postgresql://dpg-d85kijmq1p3s73dmisag-a:5432/librarydb";

    private static final String USER = "library";   
    private static final String PASSWORD = "TDzuWo94ljNzLLpwrGLTu2wS4DK5DIvW";

    public static Connection getConnection() throws Exception {
        Class.forName("org.postgresql.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
