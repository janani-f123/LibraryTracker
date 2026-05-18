package com.library.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import com.library.dao.BookDAO;

public class ViewBooksServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int userId = (int) req.getSession().getAttribute("userId");

        req.setAttribute("books", new BookDAO().getBooks(userId));
        req.getRequestDispatcher("viewBooks.jsp").forward(req, res);
    }
}