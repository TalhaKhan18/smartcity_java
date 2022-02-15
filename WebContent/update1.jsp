<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String a1=request.getParameter("t1");

String a2=request.getParameter("t2");
String a3=request.getParameter("t3");
String a4=request.getParameter("t4");
String a5=request.getParameter("t5");
String a7=request.getParameter("t7");
String a6=request.getParameter("t6");
session.setAttribute("id", a6);

System.out.println(a1);
System.out.println(a2);
System.out.println(a3);
System.out.println(a4);
System.out.println(a5);
System.out.println(a6);

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/smartcity", "root" , "root");
    PreparedStatement ps=con.prepareStatement("update feature set name='"+a1+"',category='"+a2+"',description='"+a3+"',address='"+a4+"' ,contact='"+a5+"',city='"+a7+"' where id='"+a6+"'");


ps.executeUpdate();
System.out.println("update feature set name='"+a1+"',category='"+a2+"',description='"+a3+"',address='"+a4+"' ,contact='"+a5+"',city='"+a7+"' where id='"+a6+"'");
response.sendRedirect("viewfeature.jsp?msg=updated Successful");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>