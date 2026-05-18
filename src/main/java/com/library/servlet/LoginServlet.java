package com.library.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import com.library.dao.UserDAO;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

    	System.out.println("Login servlet called"); // DEBUG
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDAO dao = new UserDAO();
        int userId = dao.login(username, password);

        if (userId != -1) {
            HttpSession session = req.getSession();
            session.setAttribute("userId", userId);
            res.sendRedirect("dashboard.jsp");
        } else {
            res.sendRedirect("login.jsp");
        }
    }
}