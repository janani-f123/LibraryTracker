package com.library.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

import com.library.dao.BookDAO;
import com.library.model.Book;

@MultipartConfig
public class AddBookServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        int userId = (int) session.getAttribute("userId");


        Part filePart = req.getPart("cover");
        String originalFileName = filePart.getSubmittedFileName();


        String fileName = System.currentTimeMillis() + "_" + originalFileName;


        String uploadPath = getServletContext().getRealPath("/images");

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        filePart.write(uploadPath + File.separator + fileName);


        Book b = new Book();
        b.setUserId(userId);
        b.setTitle(req.getParameter("title"));
        b.setAuthor(req.getParameter("author"));
        b.setTag(req.getParameter("tag"));

        b.setImagePath("images/" + fileName);

        new BookDAO().addBook(b);

        res.sendRedirect("viewBooks");
    }
}