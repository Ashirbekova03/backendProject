<%@ page import="com.example.lab5.Professors" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.lab5.Students" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IITU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</head>
<body>

<%@include file="vendor/navbar.jsp"%>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Full Name</th>
                    <th>Date of birth</th>
                    <th>Points</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Students> students = (ArrayList<Students>) request.getAttribute("students");

                    if(students!=null){
                        for (Students s : students){
                %>
                <tr>
                    <td>
                        <%=s.getId()%>
                    </td>
                    <td>
                        <%=s.getFullName()%>
                    </td>
                    <td>
                        <%=s.getDateOfBirth()%>
                    </td>
                    <td>
                        <%=s.getPoints()%>
                    </td>
                </tr>
                <%
                        }
                    }
                %>



                </tbody>
            </table>
        </div>
    </div>
</div>


</body>
</html>
