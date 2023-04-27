<%@ page import="com.example.lab5.Students" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
    <%
        Students student = (Students) request.getAttribute("students");
        if(student!=null){
    %>
    <%
        String success = request.getParameter("success");
        if(success!=null){

    %>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        Student saved successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
        }
    %>

    <%
        String error = request.getParameter("error");
        if(error!=null){

    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        Something went wrong!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
        }
    %>


    <form action="/edit" method="post">
        <div style="padding-top: 100px; padding-left:250px;
        padding-right: 250px;margin-left: 150px;">
            <input type="hidden" name="id" value="<%=student.getId()%>">
            <label>
                <p class="lead">Email:</p>
            </label>
            <input type="text" name="email" value="<%=student.getEmail()%>">
            <br>
            <label>
                <p class="lead">Password:</p>
            </label>
            <input type="text" name="password" value="<%=student.getPassword()%>">
            <br>
            <label>
                <p class="lead">Full name:</p>
            </label>
            <input type="text" name="fullName" value="<%=student.getFullName()%>">
            <br>
            <label>
                <p class="lead">Date of birth:</p>
            </label>
            <input type="text" name="dateOfBirth" value="<%=student.getDateOfBirth()%>">
            <br>
            <label>
                <p class="lead">Phone number:</p>
            </label>
            <input type="text" name="phoneNumber" value="<%=student.getPhoneNumber()%>">
            <br>
            <button class="btn btn-success">UPDATE</button>
            <br><br>
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteItemModal">
                DELETE ACCOUNT
            </button>
        </div>
    </form>



    <div class="modal fade" id="deleteItemModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="/delete" method="post">
                    <input type="hidden" name="id" value="<%=student.getId()%>">
                    <input type="hidden" name="email" value="<%=student.getEmail()%>">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Confirm delete process</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Are you sure?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                        <button class="btn btn-danger">YES</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <%
        }
    %>

</div>

</body>
</html>
