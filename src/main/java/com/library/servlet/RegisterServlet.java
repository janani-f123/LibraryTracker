package com.library.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import com.library.dao.UserDAO;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDAO dao = new UserDAO();

        if (dao.register(username, password)) {
            res.sendRedirect("login.jsp");
        } else {
            res.sendRedirect("register.jsp");
        }
    }
}