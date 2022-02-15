<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%

String a6=request.getParameter("id");
session.setAttribute("id", a6);
System.out.println(a6);

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/smartcity", "root" , "root");
    PreparedStatement ps=con.prepareStatement("delete from feature where id='"+a6+"'");


ps.executeUpdate();
 System.out.println("delete from feature where id='"+a6+"'"); 
response.sendRedirect("viewfeature.jsp?msg=deleted Successful");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>