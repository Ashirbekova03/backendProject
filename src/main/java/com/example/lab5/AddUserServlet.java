package com.example.lab5;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(value = "/adduser")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/adduser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fullName = request.getParameter("fullName");
        String dateOfBirth = request.getParameter("dateOfBirth");
        int points = 0;
        int attempts = 1;
        String type = "student";
        String phoneNumber = "";

        Users u = new Users(null, email, password, fullName, dateOfBirth, type);
        DBManager.addUser(u);
        Students s = new Students(null, email, password, fullName, dateOfBirth, points, attempts, phoneNumber);
        DBManager.addStudent(s);

        response.sendRedirect("/adduser?success");

    }
}
