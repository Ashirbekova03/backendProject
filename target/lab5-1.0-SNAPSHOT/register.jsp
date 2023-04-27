<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>ARALASU</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
  <div class="row mt-5">
    <div class="col-sm-6 offset-3">

      <%
        String success = request.getParameter("success");
        if(success!=null){
      %>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        Match added successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>

      <%
        }
      %>

      <form action="/adduser" method="post">
        <div class="container" style="padding-left: 50px; padding-bottom: 20px; background-color: #E9EFF2">
          <h3 style="padding-top: 10px;">Register</h3>
          <div class="form-group" style="padding: 10px; width: 400px">
            <label style="padding-bottom: 10px;">Email: </label>
            <input type="text" name="emailRegister" class="form-control" placeholder="Email" style="padding-bottom: 10px">
          </div>

          <div class="form-group" style="padding: 10px; width: 400px">
            <label style="padding-bottom: 10px;">Password: </label>
            <input type="text" name="passwordRegister" class="form-control" placeholder="Password">
          </div>

          <div class="form-group" style="padding: 10px; width: 400px">
            <label style="padding-bottom: 10px;">Full name: </label>
            <input type="text" name="fullName" class="form-control" placeholder="Full name" style="padding-bottom: 10px">
          </div>

          <div class="form-group" style="padding: 10px; width: 400px">
            <label style="padding-bottom: 10px;">Date of birth: </label>
            <input type="date" name="passwordRegister" class="form-control" value="2017-06-01">
          </div>
          <div class="form-group" style="padding: 10px; width: 400px">
            <label for="url" style="padding-bottom: 10px;">Enter an https:// URL:</label>
            <input type="url" name="url" id="url"
                   placeholder="https://example.com"
                   pattern="https://.*" size="30"
                   required>
          </div>

          <div class="form-group" style="padding: 10px">
            <button class="btn btn-success" style="background-color:#00008c; border: none; -webkit-text-fill-color: white">ADD USER</button>
          </div>


        </div>
      </form>
    </div>

  </div>
</div>

</body>
</html>
