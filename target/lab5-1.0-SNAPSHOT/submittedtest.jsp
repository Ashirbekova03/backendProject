<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.lab5.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IITU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</head>
<body>

<%@include file="vendor/navbar.jsp"%>
<%
    ArrayList<Students> students = (ArrayList<Students>) request.getAttribute("students");
    StudentAnswers studentAnswers = (StudentAnswers) request.getAttribute("studentanswers");
    Test test = (Test) request.getAttribute("tests");
    Long studId = (Long) request.getAttribute ("studId");
    if(students!=null){
%>
<div class="container" style="text-align:center">
    <div class="row mt-5">
        <div class="col-sm-12">
            <div class="container">
                <div class="row mt-5">
                    <div class="col-sm-12">
                        <div class="jumbotron">
                                    <h1 class="display-4">Backend Quiz </h1>
                                    <br>
                                    <p class="lead">You have already passed this test.</p>
                                    <p class="lead">Score: <%=students.get(Integer.parseInt(String.valueOf(studId))-1).getPoints()%> / 8</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <div style="padding-left: 150px; font-size: 18px; padding-bottom: 100px">
        <p class="lead" style="font-size: 28px;"><b>Your answers are below:</b></p>
        <hr style="margin-right: 150px">
        <p class="lead">1. What is a back-end system responsible for?</p>
        <p class="lead">Your answer: <%=studentAnswers.getAnswer1()%> </p>
        <p class="lead"><b>Correct answers: <%=test.getAnswer1()%> </p>
        <br>
        <p class="lead">2. What is a common language used for back-end development?</p>
        <p class="lead">Your answer: <%=studentAnswers.getAnswer2()%> </p>
        <p class="lead"><b>Correct answers: <%=test.getAnswer2()%> </p>
        <br>
        <p class="lead">3. What is a popular back-end framework for web development?</p>
        <p class="lead">Your answer: <%=studentAnswers.getAnswer3()%> </p>
        <p class="lead"><b>Correct answers: <%=test.getAnswer3()%> </p>
        <br>
        <p class="lead">4. What is an example of a back-end database management system?</p>
        <p class="lead">Your answer: <%=studentAnswers.getAnswer4()%> </p>
        <p class="lead"><b>Correct answers: <%=test.getAnswer4()%> </p>
        <br>
        <p class="lead">5. What is a back-end API used for?</p>
        <p class="lead">Your answer: <%=studentAnswers.getAnswer5()%> </p>
        <p class="lead"><b>Correct answers: <%=test.getAnswer5()%> </p>
        <br><p class="lead">6. What is a back-end server used for?</p>
        <p class="lead">Your answer: <%=studentAnswers.getAnswer6()%> </p>
        <p class="lead"><b>Correct answers: <%=test.getAnswer6()%> </p>
        <br>
        <p class="lead">7. What is a back-end developer responsible for?</p>
        <p class="lead">Your answer: <%=studentAnswers.getAnswer7()%> </p>
        <p class="lead"><b>Correct answers: <%=test.getAnswer7()%> </p>
        <br>
        <p class="lead">8. What is a common back-end language for building RESTful APIs?</p>
        <p class="lead">Your answer: <%=studentAnswers.getAnswer8()%> </p>
        <p class="lead"><b>Correct answers: <%=test.getAnswer8()%> </p>
        <br>
        <a class="btn btn-primary btn-lg" href="/profile" role="button"
           style="color: white; background-color: darkred; border: none; width: 150px; height: 50px;">BACK</a>
    </div>
<%

    }
%>

</body>
</html>


