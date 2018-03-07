<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333333;
}
table{
	color: white;
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

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: blink;
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
</ul>
</div>

<form method="post" action="RegisterProcess.jsp" name="myform" >
<table>

<h1>Account opening form</h1>
	
	
	 <tr><td>UserName</td><td><input type="text" name="username" /> </td></tr>
	  
    
	<tr><td>First Name</td><td><input type="text" name="first_name" /> </td></tr>
    
    <tr><td>Last Name</td><td><input type="text" name="last_name" /> </td></tr>
    
    <tr><td>Date Of Birth</td><td> <input type="date" value="1970-01-01" name="dob" />(yyyy-mm-dd) </td></tr>
    
    
    <tr><td>Password</td><td> <input type="password" name="pass" /> </td></tr>
    
    <tr><td>Re-enter Password</td><td> <input type="password" name="pass" /></td></tr> 
    
    <tr><td>Amount</td><td>  <input type="text" name="amount" /></td></tr>
    
    <tr><td>Address</td><td>  <input type="text" name="addr" /></td></tr>
    
    <tr><td>Phone No.(M)</td><td>  <input type="text" name="mob" /></td></tr>
    
    <tr><td>Aadhaar No.</td><td> <input type="text" name="aadhaar_no" /></td></tr>
    
    <tr><td>         </td>
    <td><input type="submit" value="Register"></td></tr>
    </table>
</form>

</body>
</html>