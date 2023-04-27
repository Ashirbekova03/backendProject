<%@ page import="com.example.lab5.Users" %><%
    Users currentUser = (Users) request.getSession().getAttribute("CURRENT_USER");
    boolean ONLINE = false;
    if(currentUser!=null){
        ONLINE=true;
    }
%>