<%@include file="user.jsp"%>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: darkred">
    <a class="navbar-brand" href="/" style="padding-left: 70px">IITU</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <%
                if(ONLINE==true && currentUser.getType().equals("student")){
            %>
                <li class="nav-item">
                    <a class="nav-link" href="/profile">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/details?id=<%=currentUser.getId()%>">Test</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            <%
                }else if (ONLINE==true && currentUser.getType().equals("professor")){
            %>
                <li class="nav-item">
                    <a class="nav-link" href="/students">Students</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>

            <%
                }else if (ONLINE==true && currentUser.getType().equals("admin")){
            %>
                <li class="nav-item">
                    <a class="nav-link" href="/professor">Professors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/adduser">Register Student</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            <%
                }else{
            %>
                <li class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>
            <%
                }
            %>


        </ul>
    </div>
    </a>
</nav>