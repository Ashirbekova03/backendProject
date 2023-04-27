<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.example.lab5.Students" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>

<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">
            <div class="container">
                <div class="row mt-5">
                    <div class="col-sm-12">
                        <%
                            Students student = (Students) request.getAttribute("students");
                            if(student!=null){
                        %>
                        <div class="jumbotron">
                            <h1 class="display-4"><%=student.getEmail()%></h1>
                            <p class="lead"><%=student.getPassword()%></p>
                            <p><%=student.getFullName()%></p>
                            <p><%=student.getPhoneNumber()%></p>
                            <a class="btn btn-primary btn-lg" href="/edit?id=<%=student.getId()%>" role="button">Edit</a>
                        </div>
                        <%
                            }
                        %>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
