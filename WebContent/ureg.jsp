<!DOCTYPE html>
<html lang="en">
<head>
<style>
table {
	border-radius: 10px;
	background-color: #000000b5;
	font-size: 30px;
	padding: 10px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	text-align: auto;
	text-color: white;
}

a {
	color: white;
}

li {
	display: inline;
}
</style>
<style>
p.ex1 {
	font-size: 30px;
}

p.ex2 {
	font-size: 50px;
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
<script src="js/jquery.touchSwipe.min.js"></script>
<script>
	$(window).load(function() {
		$('.slider')._TMS({
			show : 0,
			pauseOnHover : false,
			prevBu : '.prev',
			nextBu : '.next',
			playBu : false,
			duration : 800,
			preset : 'fade',
			pagination : false, //'.pagination',true,'<ul></ul>'
			pagNums : false,
			slideshow : 8000,
			numStatus : false,
			banners : true,
			waitBannerAnimation : false,
			progressBar : false
		})
	});
	$(window).load(function() {
		$('.carousel1').carouFredSel({
			auto : false,
			prev : '.prev1',
			next : '.next1',
			width : 1030,
			items : {
				visible : {
					min : 1,
					max : 4
				},
				height : 'auto',
				width : 157,
			},
			responsive : true,
			scroll : 1,
			mousewheel : false,
			swipe : {
				onMouse : true,
				onTouch : true
			}
		});
	});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body class="page1"
	style="background-size: cover; background-image: url('img6.jpg');">
	<header>
		<div class="container_12">
			<div class="grid_12">
				<center>
					<div class="">
						<h2 style="color:grey;font-style:italic;font-size: 40px;"><u>SMART CITY MANAGMENT SYSTEM</u>
						</h2>
					</div>
				</center>
				<br>
			</div>
			<div class="clear"></div>
		</div>
		</ul>
		<nav id="mainav" class="fl_right">
			<ul class="clear">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="active"><a href="index.html">HOME</a></li>&nbsp;&nbsp;&nbsp;&nbsp;
				<li><a href="admin.jsp">ADMIN</a></li> &nbsp;&nbsp;&nbsp;&nbsp;
				<li><a href="user.jsp">USER</a></li>
			</ul>
		</nav>
		</nav>

		<br> <br> <br>
		<!--  <form action="ureg1.jsp" , method="post"> -->
		<center>
			<table>
				<form action="ureg1.jsp" , method="post">

					<tr>
						<td style="color: #F6C5F9">Name:</td>
						<td><input type="text" style="font-size: 12px" name="t1"
							required="required"></td>
					</tr>
					<tr>
						<td style="color: #F6C5F9">Password:</td>
						<td><input type="password" style="font-size: 12px" name="t2"
							required="required"></td>
					</tr>
					<tr>
						<td style="color: #F6C5F9">Email:</td>
						<td><input type="email" style="font-size: 12px" name="t3"
							required="required"></td>
					</tr>
					<tr>
						<td style="color: #F6C5F9">Mobile no:</td>
						<td><input type="phone" style="font-size: 12px" name="t4"
							required="required"></td>
					</tr>
					<tr>
						<td style="color: #F6C5F9">Location:</td>
						<td><input type="text" style="font-size: 12px" name="t5"
							required="required"></td>
					</tr>
					<tr>
						<td style="color: #F6C5F9">Gender</td>
						<td style="color: #F6C5F9"><select name="t6"
							style="font-size: 12px" required>
								<option value="">select gendertype</option>
								<option value="male">MALE</option>
								<option value="female">FEMALE</option>
						</select></td>
					</tr>
					<tr>
						<td style="color: #F6C5F9"><input style="font-size: 12px"
							type="submit" value="add"></td>
						<td style="color: #F6C5F9"><input type="reset"
							style="font-size: 12px" value="Reset"></td>
					</tr>
			</table>
		</center>
		</form>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
		<br>
		<br> <br> <br> <br> <br>
		</nav>
		<div class="clear"></div>
		</div>
		<div class="clear"></div>
		</div>
		</div>
	</header>
</body>
</html>