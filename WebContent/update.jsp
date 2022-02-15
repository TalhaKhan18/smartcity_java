<%@page import="java.sql.*" %>
<%
String a1=request.getParameter("name"); 
String a2=request.getParameter("category");
String a3=request.getParameter("description");
String a4=request.getParameter("address");
String a5=request.getParameter("contact");
String a7=request.getParameter("city");
String a6=request.getParameter("id");
session.setAttribute("id", a6);

%>

<%String msg=request.getParameter("msg");
System.out.println("msg==="+msg);%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
<style>
table {
	border-radius: 10px; background-color: #000000b5; font-size: 30px; padding: 10px; 
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
 text-align: auto;
 text-color: white;
}
a{
color: white;
}

li {
  display: inline;
}
</style>
<title>Smart City Management System</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script	src="js/jquery.touchSwipe.min.js"></script>
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: false, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: true,
        waitBannerAnimation: false,
        progressBar: false
    })
});
$(window).load(
    function () {
        $('.carousel1').carouFredSel({
            auto: false,
            prev: '.prev1',
            next: '.next1',
            width: 1030,
            items: {
                visible: {
                    min: 1,
                    max: 4
                },
                height: 'auto',
                width: 157,
            },
            responsive: true,
            scroll: 1,
            mousewheel: false,
            swipe: {
                onMouse: true,
                onTouch: true
            }
        });
    });
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body class="page1" style="background-size: cover;background-image: url('img4.jpg');">
<header>
  <div class="container_12">
    <div class="grid_12">
      <center><div class=""><h2 style="color:black;font-style:italic;font-size: 40px;"><u>SMART CITY MANAGMENT SYSTEM</h2></u></div></center>
      <br>
    </div>
    <div class="clear"></div>
  </div>
   </ul>
  
     <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="index.html">HOME</a></li>&nbsp;&nbsp;&nbsp;
          <li><a href="addfeature.jsp">ADD FEATURES</a></li>&nbsp;&nbsp;&nbsp;
          <li><a href="viewfeature.jsp">VIEW FEATURES</a></li>&nbsp;&nbsp;&nbsp;
          <li><a href="admin.jsp">LOGOUT</a></li>
      </nav>
       
  </div>


    
  <div >
      
         <h3 align="center"><font color="green"><%if(msg!=null){ %>
				<%=msg %>
				<%} %></font></h3> 
      
         
    <center>
    <table>
		 <h3 style= "color:black;font-style:italic;font-size: 40px;">UPDATE DETAILS</h3>
		 <form action="update1.jsp" , method="post">
		 <br>
		 <tr>
		 <td style= "color: #F6C5F9"> NAME:</td>
		 <td><input type="text" style="font-size: 12px" name="t1" value=<%=a1%> required=required" >
		 
		 
		 <input type="hidden" style="font-size: 12px" name="t6" value=<%=a6%> required=required" >
		 
		 
		 </td>
		  </tr>
		 <tr>
		 <td style= "color: #F6C5F9"> Category:</td>
		  <td><input type="text" style="font-size: 12px"  name="t2" value=<%=a2%>  readonly="readonly"></td>
		  </tr>
		  <tr>
		 <td style= "color: #F6C5F9">Description:</td>
		  <td><input type="text" style="font-size: 12px"  name="t3" value=<%=a3%>  required=required"></td>
		  </tr>
		  <tr>
		 <td style= "color: #F6C5F9">Address:</td> 
		   <td><input type="text" style="font-size: 12px" name="t4" value=<%=a4%>  required=required""></td>
		   </tr>
		   <tr>
		 <td style= "color: #F6C5F9">Contact:</td> 
		 <td style= "color: #F6C5F9"><input type="phone" style="font-size: 12px" name="t5" value=<%=a5%>  required=required" ></td>
		 </tr>
		  
		 <tr>
		 <td style= "color: #F6C5F9">City:</td> 
		 <td style= "color: #F6C5F9"><input type="text" style="font-size: 12px" name="t7" value=<%=a7%>  required=required" ></td>
		 </tr>
		
		 <td></td>
		   <td style= "color: #F6C5F9"><input type="submit" style="font-size:12px" value="submit"></td>
		   </tr> 
		   </table>
		   </center> 
		   </form>
        <br><br><br>
       
    </div>





</body>
</html>