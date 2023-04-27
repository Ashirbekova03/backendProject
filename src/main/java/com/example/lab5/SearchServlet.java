package com.example.lab5;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("Name");
        ArrayList<Professors> professors = DBManager.getProfessors();
        ArrayList<Professors> professors2 = new ArrayList<>();
        int count = 0;
        for (int i=0; i<professors.size(); i++) {
            if (professors.get(i).getFullName().equals(name)) {
                professors2.add(professors.get(i));
                count++;
            }
        }

        if(professors2!=null){
            for (int i=0; i<professors2.size(); i++){
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<html>");
                out.println("<head>");
                out.println("<title>IITU Search</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>");
                out.println(professors2.get(i).getFullName());
                out.println("</h1>");
                out.println("<h1>");
                out.println(professors2.get(i).getYears() + " years");
                out.println("</h1>");
                out.println("<h1>");
                out.println("Experience:" + professors2.get(i).getEducation());
                out.println("</h1>");
                out.println("<h1>");
                out.println("Experience:" + professors2.get(i).getExperience());
                out.println("</h1>");
                out.println("<h1>");
                out.println("Salary:" + professors2.get(i).getSalary());
                out.println("</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        }
        if (count==0){
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html>");
            out.println("<head>");
            out.println("<title>IITU Search</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>");
            out.println("There is no professor named " + name + " at IITU.");
            out.println("</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
