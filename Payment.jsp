<%@ page import="com.ibm.dao.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Fun and Food</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/zerogrid.css" type="text/css" media="all">
<link rel="stylesheet" href="css/responsive.css" type="text/css" media="all"> 
<link rel="stylesheet" href="css/responsiveslides.css" /> 
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>  
<script type="text/javascript" src="js/Forum_400.font.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script> 
<script type="text/javascript" src="js/css3-mediaqueries.js"></script>
<script src="js/responsiveslides.js"></script>
<script>
	$(function () {
	  $("#slidez").responsiveSlides({
		auto: true,
		pager: false,
		nav: true,
		speed: 500,
		maxwidth: 960,
		namespace: "centered-btns"
	  });
	});
</script>
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
<body id="page1">
<div class="body6">
	<div class="body1">
		<div class="body5">
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
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href="Cuisine.html">Table booking</a></li>
							<li><a href="Wine.html">Movie Tickets</a></li>
							<li><a href="logout.jsp">Logout</a></li>
							<li><a href="Contacts.html">Contact</a></li>
						</ul>
					</nav>
				</header> 
<body style="background-color: black;color:white;">
<%
out.println("<center><h1>BOOKING DETAILS</h1><br>");
String mid=(String)session.getAttribute("mname");
String username=(String)session.getAttribute("X");
System.out.println(mid+" "+username);
String sql="select * from movie where mname=?";
ResultSet rs=Dataconn.FetchMovie(sql,mid);

out.println("<table border='1'>");
out.println("<tr>");
out.println("<th></th>");
//out.println("<th>FNAME</th>");
//out.println("<th>Movie ID</th>");
out.println("<th>Movie NAME</th>");
out.println("<th>Screen Name</th>");
out.println("<th>Leading Actor Name</th>");
out.println("<th>Director Name</th>");
out.println("<th>Music</th>");
out.println("<th>Date</th>");
//out.println("<th>PIC</th>");
out.println("</tr>");
while(rs.next())
{
	//String mypath="images/"+rs.getString(7);
	
	out.println("<tr>");
	out.println("<td><input type='radio' class='X' name='X' value='"+rs.getString(1)+"' onclick='showCustomer()' /></td>");
	//out.println("<td>"+rs.getString(1)+"</td>");
	//out.println("<td>"+rs.getString(2)+"</td>");
	out.println("<td>"+rs.getString(1)+"</td>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("<td>"+rs.getString(3)+"</td>");
	out.println("<td>"+rs.getString(4)+"</td>");
	out.println("<td>"+rs.getString(5)+"</td>");
	out.println("<td>"+rs.getString(6)+"</td>");
	//out.println("<td>"+rs.getString(8)+"</td>");
	//out.println("<td><img src='"+mypath+"' height='50' width='50'/></td>");
    out.println("</tr>");
}
out.println("</table>");


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//String sql1="select * from register where fname=?";
//System.out.println("========================"+username);
//ResultSet rs1=Dataconn.FetchMovie(sql1,username);
//out.println("<table border=1>");
//out.println("<tr>");
//out.println("<th>FNAME</th>");
//out.println("<th>LNAME</th>");
//out.println("<th>CONTACT</th>");
//out.println("<th>ADDRESS</th>");
//out.println("<th>GENDER</th>");
//out.println("<th>STATE</th>");
//out.println("<th>CITY</th>");
//out.println("<th>EMAILID</th>");
//out.println("<th>PASSWORD</th>");
//out.println("<th>DOB</th>");
//out.println("</tr>");
//while(rs1.next())
//{
	
	
//	out.println("<tr>");
//	
	//out.println("<td>"+rs1.getString(1)+"</td>");
	//out.println("<td>"+rs1.getString(2)+"</td>");
	//out.println("<td>"+rs1.getString(3)+"</td>");
	//out.println("<td>"+rs1.getString(4)+"</td>");
//	out.println("<td>"+rs1.getString(5)+"</td>");
	//out.println("<td>"+rs1.getString(6)+"</td>");
	//out.println("<td>"+rs1.getString(7)+"</td>");
	//out.println("<td>"+rs1.getString(8)+"</td>");
	//out.println("<td>"+rs1.getString(9)+"</td>");
	//out.println("<td>"+rs1.getString(10)+"</td>");
//	out.println("</tr>");
//}
//out.println("</table>");


String sql2="select * from booking where username=?";
System.out.println("========================"+username);
ResultSet rs2=Dataconn.FetchMovie(sql2,username);
out.println("<table border=1>");
out.println("<tr>");
out.println("<th>SEAT</th>");
out.println("<th>USERNAME</th>");
out.println("</tr>");
while(rs2.next())
{
	out.println("<tr>");
	out.println("<td>"+rs2.getString(1)+"</td>");
	out.println("<td>"+rs2.getString(2)+"</td>");
	out.println("</tr>");
}
out.println("</table>");

%>
<form method="post" action="PAY">

</form>

</body>
</html>