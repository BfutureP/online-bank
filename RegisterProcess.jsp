<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
    <% try{
    	
    String username=request.getParameter("username");
    String firstname=request.getParameter("first_name");
    String lastname=request.getParameter("last_name");
    String dateofbirth=request.getParameter("dob");
    String password=request.getParameter("pass");
   // String re-password=request.getParameter("pass");
    String amount=request.getParameter("amount");
    String address=request.getParameter("addr");
    String phoneno=request.getParameter("mob");
    String aadhaar_no=request.getParameter("aadhaar_no");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bankiin","root","password");
    PreparedStatement ps=con.prepareStatement("insert into register_ac(username,first_name,last_name,dob,pass,amount,addr,mob_no,aadhaar_no) values(?,?,?,?,?,?,?,?,?)");
    
    ps.setString(1,username);
    ps.setString(2,firstname);
    ps.setString(3,lastname);
    ps.setString(4,dateofbirth);
    ps.setString(5,password);
    ps.setString(6,amount);
    ps.setString(7,address);
    ps.setString(8,phoneno);
    ps.setString(9,aadhaar_no);
    
    
    
    int s=ps.executeUpdate();
    System.out.print(s);
    }
    catch(SQLException e2){
    	e2.printStackTrace();
    }
    	
    	%>
    
<jsp:forward page="Login1.jsp"></jsp:forward>
//reference navigation page