<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<a href="Login.html">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("username")%>
<a href='Home.html'>Log out</a>
<%
    }
%>
    