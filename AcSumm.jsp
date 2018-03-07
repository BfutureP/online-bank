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
table{
	color: white;
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


<h2>ACCOUNT SUMMARY</h2>
<form action="AcProcess.jsp">
<table>
					<tr><td>ACCOUNT NO:</td><td> <input type="text" name="acno"/></td></tr>
					<tr><td>USER NAME:</td><td> <input type="text" name="username"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="pass"/></td></tr>
					<tr> </tr>
					<tr>
					<td> </td>
					<td><input type="submit" value="UPDATE" />
					</td>
					<td></td>
					<td><input type="reset" value="CLEAR" /></td></tr>
</table>

</form>

<script type="text/javascript">

alert("welcome to summary page");
</script>


</body>
</html>