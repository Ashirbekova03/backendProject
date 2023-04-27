package com.example.lab5;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(value = "/delete")
public class DeleteUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String email = request.getParameter("email");
        Students student = DBManager.getStudent(id);
        if(student!=null){
            DBManager.deleteUser(email);
            if(DBManager.deleteStudent(student)){
                response.sendRedirect("/logout");
            }else{
                response.sendRedirect("/editpost?id="+id+"&error");
            }
        }else {
            response.sendRedirect("/logout");
        }
    }
}
