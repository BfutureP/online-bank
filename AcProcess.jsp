<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>







<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333333;
}
h1{
	color: white;
}
h2{
color: white;
}
h3{
	color: red;
}
table{
color: white;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111111;
}
</style>
</head>
<body background="D:\IIB\back.jpg">

<div id="header">
	<h1>INDIAN INTERNATIONAL BANK</h1>
	<h3>A step Ahead</h3>

</div>

<div id="navigation">

<ul id="horizontal-list">
<li><a href="Home.html">HOME</a></li>
<li><a href="CreateNewAc.jsp">NEW ACCOUNT</a></li>
<li><a href="Balance.jsp">BALANCE</a></li>
<li><a href="Deposit.jsp">DEPOSIT</a></li>
<li><a href="Withdraw.jsp">WITHDRAW</a></li>
<li><a href="Transfer.jsp">TRANSFER</a></li>
<li><a href="AcSumm.jsp">AC SUMMARY</a></li>
<li><a href="CloseAc.jsp">CLOSE AC</a></li>
<li><a href="About.jsp">ABOUT US</a></li>
<li><a href="Login.html">LOGIN</a></li>
<li><a href="Logout.jsp">LOGOUT</a></li>
</div>

</ul>


</div>


<h2 align="center"><font><strong>Account summary </strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>acno</b></td>
<td><b>username</b></td>
<td><b>date</b></td>
<td><b>credit</b></td>
<td><b>debit</b></td>
</tr>
<%
try{ 
	
	 String acno=request.getParameter("acno");
	 String username=request.getParameter("username");
	 String password=request.getParameter("pass");
	 
	 Class.forName("com.mysql.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bankiin","root","password");
	   	    Statement st = con.createStatement();
	   	    String sql="select * from transaction where acno = '" +acno+ "' " ;
	    ResultSet rs = st.executeQuery( sql);
	    
	    while(rs.next()){
%> 


<% out.println("<tr><td>");
out.println(rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>"  + rs.getString(3) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td></tr>");
	    }


} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>