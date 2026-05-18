package com.library.dao;

import java.sql.*;
import java.util.*;

import com.library.model.Book;

public class BookDAO {

    public void addBook(Book book) {
        try (Connection con = DBConnection.getConnection()) {
        	String sql = "INSERT INTO books(user_id, title, author, tag, image_path) VALUES (?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, book.getUserId());
            ps.setString(2, book.getTitle());
            ps.setString(3, book.getAuthor());
            ps.setString(4, book.getTag());
            ps.setString(5, book.getImagePath());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Book> getBooks(int userId) {
        List<Book> list = new ArrayList<>();
        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT * FROM books WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Book b = new Book();
                b.setTitle(rs.getString("title"));
                b.setAuthor(rs.getString("author"));
                b.setTag(rs.getString("tag"));
                b.setImagePath(rs.getString("image_path"));
                list.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public int totalBooks(int userId) throws Exception {
        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(
            "SELECT COUNT(*) FROM books WHERE user_id=?");
        ps.setInt(1, userId);
        ResultSet rs = ps.executeQuery();
        rs.next();
        return rs.getInt(1);
    }

    public ResultSet booksByAuthor(int userId) throws Exception {
        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(
            "SELECT author, COUNT(*) as count FROM books WHERE user_id=? GROUP BY author");
        ps.setInt(1, userId);
        return ps.executeQuery();
    }

    public ResultSet booksByTag(int userId) throws Exception {
        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(
            "SELECT tag, COUNT(*) as count FROM books WHERE user_id=? GROUP BY tag");
        ps.setInt(1, userId);
        return ps.executeQuery();
    }
}