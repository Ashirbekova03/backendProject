package com.example.lab5;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Test> tests = DBManager.getTests();
        request.setAttribute("tests", tests);
        Users currentUser = (Users)request.getSession().getAttribute("CURRENT_USER");
        if(currentUser!=null){
            request.getRequestDispatcher("/profile.jsp").forward(request, response);

        }else{
            response.sendRedirect("/login");
        }
        //request.getRequestDispatcher("/profile.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
