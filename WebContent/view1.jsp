<%@ page import="java.sql.*" %>
<%String msg=request.getParameter("t7");
System.out.println("msg==="+msg);%>
<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/smartcity", "root" , "root");
		PreparedStatement ps1=con.prepareStatement("select distinct(category) from feature where city='"+msg+"'");
		ResultSet rs=ps1.executeQuery();
		%>
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
        pagination: false, 
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

</head>
<body class="page1" style="background-size: cover;background-image: url('pn1.jpg');">
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
          <li><a href="profile.jsp">PROFILE</a></li>&nbsp;&nbsp;&nbsp;
          <li><a href="view.jsp">VIEW FEATURES</a></li>&nbsp;&nbsp;&nbsp;
          <li><a href="user.jsp">LOGOUT</a></li>
      </nav>
        </nav>
        <br><br><br> 
  <form action="view2.jsp" method="post" >
  
  <input type="hidden" name="t" value="<%=msg%>">
    <h2 align="center" style= "color:black;font-style:italic;font-size: 40px;"><u>SELECT CATEGORY</u></h2>
			<table align="center" font-color="black">
			<tr>
			<td style= "color: BLACK" >Category:</td>
			<td style= "color: BLACK">
			<select name="t7">
			<% while(rs.next()){ %>
			<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
			<%} %>
			</select></td>
			</tr>
			<tr>
			<td></td>
		 <td style= "color: black"><input style="btn btn-primary; font-size: 12px"  type="submit" value="submit"></td>
		   
		  </tr>
			</table>
             </form>
             </div>  
             <br> <br> <br> <br> <br> <br> <br> <br><br> <br> <br> <br> <br>   
        <div class="clear"></div>
      </div> 
      <div class="clear"></div>
    </div>
  </div>
</header>
</body>
</html>