<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
    <div class="row mt-5" style="padding-top: 40px; margin: 20px">
        <div class="col-sm-6 offset-3">
            <div class="container" style="padding-left: 50px; padding-bottom: 20px; background-color: #E9EFF2">
                <h3 style="padding-top: 50px">IITU</h3>
                <h1 style="padding-top: 10px; padding-bottom: 30px">Sign In</h1>
                <%
                    String passError = request.getParameter("passworderror");
                    if(passError!=null){
                %>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        Incorrect password or type!
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>

                <%
                    }
                %>

                <%
                    String emailError = request.getParameter("emailerror");
                    if(emailError!=null){
                %>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    Incorrect email!
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>

                <%
                    }
                %>

                <form action="/auth" method="post">
                    <div class="form-group" style="padding: 10px; width: 400px">
                        <label style="padding-bottom: 10px;">Enter your email: </label>
                        <input type="email" name="email"  required class="form-control" placeholder="Email" style="padding-bottom: 10px">
                    </div>
                    <div class="form-group" style="padding: 10px; width: 400px">
                        <label style="padding-bottom: 10px;">Enter your password: </label>
                        <input type="password" name="password" required class="form-control" placeholder="Password">
                    </div>

                    <div class="form-group" style="padding: 10px; width: 400px">
                        <label style="padding-bottom: 10px;">Enter as: </label>
                        <select type="type" name="type">
                            <option>student</option>
                            <option>professor</option>
                            <option>admin</option>
                        </select>
                    </div>
                    <div class="form-group" style="padding:25px">
                        <button class="btn btn-success">Sign In</button>
                    </div>
                </form>

            </div>

            <!--<a class="btn btn-primary btn-lg" href="/edit?id=%=//league.getId()%" role="button">Edit</a> -->

        </div>

    </div>
</div>
</body>
</html>
