<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/zerogrid.css" type="text/css" media="all">
<link rel="stylesheet" href="css/responsive.css" type="text/css" media="all"> 
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>  
<script type="text/javascript" src="js/Forum_400.font.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script> 
 <script type="text/javascript" src="js/css3-mediaqueries.js"></script>
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
	<style type="text/css">
		.slider_bg {behavior:url(js/PIE.htc)}
	</style>
<![endif]-->
<!--[if lt IE 7]>
	<div style='clear:both;text-align:center;position:relative'>
		<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
	</div>
<![endif]-->
</head>
<body id="page2">
<div class="body6">
	<div class="body1">
		<div class="main zerogrid">
<!-- header -->
			<header>
				<h1><a href="index.html" id="logo"><img src="images/logo.png"/></a></h1>
				<nav>
					<ul id="top_nav">
						<li><a href="index.html"><img src="images/icon_1.gif" alt=""></a></li>
						<li><a href="#"><img src="images/icon_2.gif" alt=""></a></li>
						<li class="end"><a href="Contacts.html"><img src="images/icon_3.gif" alt=""></a></li>
					</ul>
				</nav>
				<nav>
					<ul id="menu">
						<li><a href="index.html">Home</a></li>
							<li><a href="Cuisine.html">Table booking</a></li>
							<li><a href="Wine.html">Movie Tickets</a></li>
							
							<li><a href="Contacts.html">Contact</a></li>
					</ul>
				</nav>
			</header>
<!-- / header -->
<!-- content -->
<body>

							<center>
							
							<font color="white"><h2>ADMIN LOGIN</h2>
							<p>&nbsp;</p>
							<br>
					
							<form action="AdminLoginServlet" method="post">
							<table border="0">
							<tr>
							
							<font color="white"><td>USERNAME</td>
							<td><input type="text" name="username" /></td>
							</tr>
							<p>&nbsp;</p>
							<tr>
							
							<font color="white"><td>PASSWORD</td>
							<td><input type="text" name="pwd" /></td>
							</tr>
							<tr>
							<td></td>
							<td><input type="submit" /> </td>
							</tr>
							</table>
							</form>
							
							    <%
								if(request.getAttribute("MSG")!=null)
								{
									out.println("<font color='red'>"+request.getAttribute("MSG"));
								}
								%>
								</center>
						
</body>
</html>
