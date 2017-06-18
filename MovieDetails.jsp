<%@ page import="java.sql.*" %>
<%@ page import="com.ibm.dao.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body id="page2">
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-1">
          <div class="fleft"><a href="#">Show<span>Time</span></a></div>
          <ul>
            <li><a href="#"><img src="images/icon1.gif" alt="" /></a></li>
            <li><a href="#"><img src="images/icon2.gif" alt="" /></a></li>
            <li><a href="#"><img src="images/icon3.gif" alt="" /></a></li>
          </ul>
        </div>
        <div class="row-2">
          <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="about-us.html" class="">About</a></li>
            <li><a href="temp.jsp">Login</a></li>
            <li><a href="contact-us.html">Contacts</a></li>
            <li class="last"><a href="Register.jsp">Registration</a></li>
          </ul>
        </div>
      </div>

</head>
<body>
<center><br><br>
<h1>MOVIE DETAILS</h1><br><br>

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
out.println("</table>");

out.println("</form><br><br>");

%>

<a href="AdminHome.jsp">ADMINHOME</a>

</body>
</html>