<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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



</form>
<h3>Successfully register</h3><br>
<h3>Enter username and password to login</h3>




<form action="LoginProcess.jsp">
<table>
<tr><td>USER NAME:</td><td> <input type="text" name="username"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="pass"/></td></tr>
					<tr> </tr>
					<tr>
					<td> </td>
					<td><input type="submit" value="LOGIN" />
					<a href="CreateNewAc.jsp">REGISTER</a></td></tr>
</table>

</form>

</body>
</html>