<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
    <% try{
    	
    String ac1=request.getParameter("acno");
    String username=request.getParameter("username");
    String password=request.getParameter("pass");
    String date=request.getParameter("date");
    String ac2=request.getParameter("acno1");
    String deposit=request.getParameter("deposit");
    String credit=request.getParameter("credit");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bankiin","root","password");
    PreparedStatement ps=con.prepareStatement("insert into transaction(acno,username,pass,date,credit) values(?,?,?,?,?)");
    
    ps.setString(1,ac1);
    ps.setString(2,username);
    ps.setString(3,password);
    ps.setString(4,date);
    ps.setString(5,credit);
   
    
     
    
    int s=ps.executeUpdate();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery( "select amount from register_ac where acno = '"+ac1+"'");
  
    int amount1=0;
    while (rs.next()) {
    amount1=rs.getInt("amount");
    }
    System.out.print(amount1);
    
    ResultSet rs1 = st.executeQuery( "select amount from register_ac where acno = '"+ac2+"'");
    
    int amount2=0;
    while (rs1.next()) {
    amount2=rs1.getInt("amount");
    }
    System.out.print(amount2);
    
   ResultSet rs2 = st.executeQuery( "select credit from transaction where acno='"+ac1+"' order by id desc limit 1");
    int balance2=0;
    while (rs2.next()) {
    balance2=rs2.getInt("credit");
    }
    System.out.print(balance2);
    
    int bal1=amount1-balance2;
    int bal2=amount2+balance2;
    st.addBatch("insert into transaction(acno,username,pass,date,deposit) values('"+ac2+"','"+username+"','"+password+"','"+date+"','"+credit+"')");
    st.addBatch("update register_ac set amount="+bal1+" where acno='"+ac1+"'");
    st.addBatch("update register_ac set amount="+bal2+" where acno='"+ac2+"'");
    st.executeBatch();
    
    }
    catch(SQLException e2){
    	e2.printStackTrace();
    }
    	
    	%>
    	
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


<h2 align="center"><font><strong>transfer done Successfully</strong></font></h2>

</table>
</body>
</html>