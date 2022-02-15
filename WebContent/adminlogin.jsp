<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style=" zoom: 195%; ">
<%
String name=request.getParameter("name");
String password=request.getParameter("password");
if(name.equals("admin")&&password.equals("admin"))
{
	response.sendRedirect("adminhome.jsp?msg=Login Successfully");
}else{
	response.sendRedirect("admin.jsp?msg=Please enter valid credentials");
}
%>
</body>
</html>