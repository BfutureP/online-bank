<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
    <% try{
    	
    String acno=request.getParameter("acno");
    String username=request.getParameter("username");
    String password=request.getParameter("pass");
    String date=request.getParameter("date");
    String deposit=request.getParameter("deposit");
    String credit=request.getParameter("credit");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bankiin","root","password");
    PreparedStatement ps=con.prepareStatement("insert into transaction(acno,username,pass,date,credit) values(?,?,?,?,?)");
    
    ps.setString(1,acno);
    ps.setString(2,username);
    ps.setString(3,password);
    ps.setString(4,date);
    ps.setString(5,credit);
   
   
    
    
    
    int s=ps.executeUpdate();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery( "select amount from register_ac where acno = '"+acno+"'");
  
    int balance1=0;
    while (rs.next()) {
    balance1=rs.getInt("amount");
    }
    System.out.print(balance1);
    
   ResultSet rs1 = st.executeQuery( "select credit from transaction where acno='"+acno+"' order by id desc limit 1");
    int balance2=0;
    while (rs1.next()) {
    balance2=rs1.getInt("credit");
    }
    System.out.print(balance2);
    
    int bal1=balance1-balance2;
    System.out.print(bal1);
    st.addBatch("update register_ac set amount="+bal1+" where acno='"+acno+"'");
    st.executeBatch();
    
    }
    catch(SQLException e2){
    	e2.printStackTrace();
    }
    	
    	%>
    
<jsp:forward page="Withdraw.jsp"></jsp:forward>
//reference navigation page