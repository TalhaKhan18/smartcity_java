<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

table {

	border-radius: 10px; background-color: #000000b5; font-size: 30px; padding: 10px; 
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>

<%
String sql="";
String a1=request.getParameter("t1");
String a2=request.getParameter("t2");
String a3=request.getParameter("t3");
String a4=request.getParameter("t4");
String a5=request.getParameter("t5");
String a7=request.getParameter("t7");



Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/smartcity","root","root");

	sql="insert into feature(name,category,description,address,contact,city) values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a7+"')";
	System.out.println(sql);
	PreparedStatement pd=con.prepareStatement(sql);
	pd.executeUpdate();
	response.sendRedirect("addfeature.jsp?m=added successfully ");
	
%>
</body>
</html>



