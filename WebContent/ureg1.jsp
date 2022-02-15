<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
String a6=request.getParameter("t6");

System.out.println("select count(*) from reg where email='"+a3+"'"); 

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/smartcity","root","root");
 PreparedStatement pst =con.prepareStatement("select count(*) from reg where email='"+a3+"'"); 

int a=0;
ResultSet od=pst.executeQuery();
while(od.next()){
	a=od.getInt(1);
	
	
}
if(a>0){
	
	response.sendRedirect("urg.jsp?m=this email id already in using");
	}
else{
	sql="insert into reg(name,pwd,email,num,location,gender) values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"')";
	System.out.println(sql);
	PreparedStatement pd=con.prepareStatement(sql);
	pd.executeUpdate();
	response.sendRedirect("ureg.jsp?m=Registration successfully Completed");
	
	
	
	
	
}


%>
</body>
</html>



