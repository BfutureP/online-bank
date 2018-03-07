<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/bankiin",
            "root", "password");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from register_ac where username='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", userid);
        out.println("welcome " + userid);
        out.println("<a href='Home.html'>HOME</a>");
        response.sendRedirect("Success.jsp");
    } else {
        out.println("Invalid password <a href='Login.html'>try again</a>");
    }
%>
    