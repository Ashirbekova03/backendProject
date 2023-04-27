package com.example.lab5;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long id =0L;
        try{
            id = Long.parseLong(request.getParameter("id"));

        }catch (Exception e){

        }
        Users user = DBManager.getUser2(id);
        ///////
        ArrayList<Students> students = DBManager.getStudents();
        Long studId = -1L;
        for(int i=0; i< students.size(); i++){
            if(students.get(i).getEmail().equals(user.getEmail())){
                i=i+1;
                studId = new Long(i);
            }
        }

        Students student = DBManager.getStudent(studId);
        Test test = DBManager.getTest(1L);
        StudentAnswers studentAnswers = DBManager.getStudentAnswers(student.getEmail());
        if(studentAnswers!=null){
            int attempts = 0;
            student.setAttempts(attempts);
            DBManager.updateStudents(student);
        }
        if(student.getAttempts()==0){
            request.setAttribute("students", students);
            request.setAttribute("studentanswers", studentAnswers);
            request.setAttribute("tests", test);
            request.setAttribute("studId", studId);
            request.getRequestDispatcher("/submittedtest").include(request, response);
        }else{
            if(user!=null){
                request.setAttribute("users", user);
                request.getRequestDispatcher("/details.jsp").forward(request, response);

            }else{
                request.getRequestDispatcher("/404.jsp").forward(request, response);
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
