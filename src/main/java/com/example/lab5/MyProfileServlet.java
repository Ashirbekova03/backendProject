package com.example.lab5;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(value = "/myprofile")
public class MyProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = "";
        try{
            email = request.getParameter("email");

        }catch (Exception e){

        }

        Students student = DBManager.getStudent2(email);

        if(student!=null){
            request.setAttribute("students", student);
            request.getRequestDispatcher("/myprofile.jsp").forward(request, response);

        }else{
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }
        request.getRequestDispatcher("/edit.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

