package com.example.lab5;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(value = "/edit")
public class EditUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id =0L;
        try{
            id = Long.parseLong(request.getParameter("id"));

        }catch (Exception e){

        }


        Students student = DBManager.getStudent(id);
        if(student!=null){
            request.setAttribute("students", student);
            request.getRequestDispatcher("/edit.jsp").forward(request, response);

        }else{
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fullName = request.getParameter("fullName");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String phoneNumber = request.getParameter("phoneNumber");

        Students student = DBManager.getStudent(id);
        if (student != null) {
            student.setEmail(email);
            student.setPassword(password);
            student.setFullName(fullName);
            student.setDateOfBirth(dateOfBirth);
            student.setPhoneNumber(phoneNumber);

            if (DBManager.updateStudents(student)) {
                response.sendRedirect("/edit?id=" + id + "&success");
            } else {
                response.sendRedirect("/edit?id=" + id + "&error");
            }

        } else {
            response.sendRedirect("/");
        }
    }
}
