package com.library.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class StatsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        req.getRequestDispatcher("stats.jsp").forward(req, res);
    }
}