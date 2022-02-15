
<%@page import="java.sql.*" %>
<%
String email=request.getParameter("email");
System.out.println(email);
String pwd=request.getParameter("pwd");
System.out.println(pwd);
int cnt=0;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/smartcity","root","root");
PreparedStatement ps1=con.prepareStatement("select count(*) from reg where email=? and pwd=?");
ps1.setString(1,email);
ps1.setString(2,pwd);
ResultSet rs=ps1.executeQuery();
while(rs.next())
{
	 cnt=rs.getInt(1);
	 
}
System.out.println(cnt);
if(cnt==1)
{
	session.setAttribute("email",email);

	response.sendRedirect("userhome.jsp?msg=Login Successful");
	
}
else
{
	response.sendRedirect("user.jsp?msg=Invalid credentials. Please try again");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>