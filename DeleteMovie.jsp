<!DOCTYPE html>
<html lang="en">
<head>
<title>Wine</title>
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
<body id="page3">
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
						<li><a href="Cuisine.html">Table Booking</a></li>
						<li class="active"><a href="Movie Tickets">Wine List</a></li>
						<li><a href="logout.jsp">Logout</a></li>
						<li><a href="Contacts.html">Contact</a></li>
					</ul>
				</nav>
			</header>
<%@ page import="java.sql.*" %>
<%@ page import="com.ibm.dao.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Show Time | About Us</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Gill_Sans_400.font.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<script type="text/javascript" src="js/ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, .link1 span, .link1');</script>
<link href="css/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
?

<center><br><br>
<h1>DELETE MOVIES </h1><br><br>
<%
String sql="select * from movie";
ResultSet rs=Dataconn.fetchAllUser(sql);
out.println("<form method='post' action='DeleteMovieAction.jsp'>");
out.println("<table border='0'>");
out.println("<tr>");
out.println("<th></th>");
//out.println("<th>Movie ID</th>");
out.println("<th>Movie NAME</th>");
out.println("<th>Screen Name</th>");
out.println("<th>Leading Actor Name</th>");
out.println("<th>Director Name</th>");
out.println("<th>Music</th>");
out.println("<th>Date</th>");
out.println("<th>PIC</th>");
out.println("</tr>");
while(rs.next())
{
	String mypath="images/"+rs.getString(7);
	
	out.println("<tr>");
	out.println("<td><input type='checkbox' class='X' name='X' value='"+rs.getString(1)+"' onclick='showCustomer()' /></td>");
	out.println("<td>"+rs.getString(1)+"</td>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("<td>"+rs.getString(3)+"</td>");
	out.println("<td>"+rs.getString(4)+"</td>");
	out.println("<td>"+rs.getString(5)+"</td>");
	out.println("<td>"+rs.getString(6)+"</td>");
	out.println("<td>"+rs.getString(7)+"</td>");
	out.println("<td><img src='"+mypath+"' height='50' width='50'/></td>");
    out.println("</tr>");
}
out.println("</table><br>");
out.println("<input type='submit' value='delete'>");
out.println("</form><br>");
%>
<a href="AdminHome.jsp">ADMIN HOME</a>
</body>
</html>