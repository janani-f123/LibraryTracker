package com.library.dao;

import java.sql.*;

public class UserDAO {

    public boolean register(String username, String password) {
        try (Connection con = DBConnection.getConnection()) {
            String sql = "INSERT INTO users(username, password) VALUES (?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public int login(String username, String password) {
        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT * FROM users WHERE username=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("id");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}