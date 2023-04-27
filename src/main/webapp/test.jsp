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
        Users user = (Users) request.getAttribute("users");
        if(user!=null){
    %>
        <%
            String success = request.getParameter("success");
            if(success!=null){

        %>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                Test saved successfully!
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

    <form action="/test" method="post">
        <input type="hidden" name="id" value="<%=user.getId()%>">
        <input type="hidden" name="email" value="<%=user.getEmail()%>">
        <div style="padding: 40px; font-size: 18px">
            <h2 style="margin-left: 550px; margin-bottom: 20px">Backend Skills Quiz</h2>
            <div style="margin-left: 150px; margin-right: 150px; padding:40px; background-color: #e3e5e5; border-radius: 12px">
                <p style="margin-bottom: 0px; padding-bottom: 5px">
                    1. What is a back-end system responsible for?
                </p>
                <input type='radio' name='q1o1' value='Front-end design and user interface'>
                Front-end design and user interface
                <br>
                <input type='radio' name='q1o2' value='Client-side scripting and styling'>
                Client-side scripting and styling
                <br>
                <input type='radio' name='q1o3' value='Server-side processing and database management'>
                Server-side processing and database management
                <br><br>

                <p style="margin-bottom: 0px; padding-bottom: 5px">
                    2. What is a common language used for back-end development?
                </p>
                <input type='radio' name='q2o1' value='JavaScript'>
                JavaScript
                <br>
                <input type='radio' name='q2o2' value='Python'>
                Python
                <br>
                <input type='radio' name='q2o3' value='HTML'>
                HTML
                <br><br>

                <p style="margin-bottom: 0px; padding-bottom: 5px">
                    3. What is a popular back-end framework for web development?
                </p>
                <input type='radio' name='q3o1' value='Django'>
                Django
                <br>
                <input type='radio' name='q3o2' value='React'>
                React
                <br>
                <input type='radio' name='q3o3' value='Angular'>
                Angular
                <br><br>

                <p style="margin-bottom: 0px; padding-bottom: 5px">
                    4. What is an example of a back-end database management system?
                </p>
                <input type='radio' name='q4o1' value='MongoDB'>
                MongoDB
                <br>
                <input type='radio' name='q4o2' value='MySQL'>
                MySQL
                <br>
                <input type='radio' name='q4o3' value='Firebase'>
                Firebase
                <br><br>

                <p style="margin-bottom: 0px; padding-bottom: 5px">
                    5. What is a back-end API used for?
                </p>
                <input type='radio' name='q5o1' value='Client-side rendering'>
                Client-side rendering
                <br>
                <input type='radio' name='q5o2' value='Server-side data processing'>
                Server-side data processing
                <br>
                <input type='radio' name='q5o3' value='Front-end styling'>
                Front-end styling
                <br><br>

                <p style="margin-bottom: 0px; padding-bottom: 5px">
                    6. What is a back-end server used for?
                </p>
                <input type='radio' name='q6o1' value='Hosting front-end assets'>
                Hosting front-end assets
                <br>
                <input type='radio' name='q6o2' value='Running client-side scripts'>
                Running client-side scripts
                <br>
                <input type='radio' name='q6o3' value='Processing and storing data'>
                Processing and storing data
                <br><br>

                <p style="margin-bottom: 0px; padding-bottom: 5px">
                    7. What is a back-end developer responsible for?
                </p>
                <input type='radio' name='q7o1' value='Client-side scripting and styling'>
                Client-side scripting and styling
                <br>
                <input type='radio' name='q7o2' value='Server-side programming and database management'>
                Server-side programming and database management
                <br>
                <input type='radio' name='q7o3' value='Front-end design and user experience'>
                Front-end design and user experience
                <br><br>

                <p style="margin-bottom: 0px; padding-bottom: 5px">
                    8. What is a common back-end language for building RESTful APIs?
                </p>
                <input type='radio' name='q8o1' value='Java'>
                Java
                <br>
                <input type='radio' name='q8o2' value='Ruby'>
                Ruby
                <br>
                <input type='radio' name='q8o3' value='PHP'>
                PHP
                <br><br>

                <button class="btn btn-success" style="background-color: darkred; color: white; border: none">SUBMIT</button>

            </div>
        </div>
    </form>
    <%
        }
    %>
</body>
</html>

