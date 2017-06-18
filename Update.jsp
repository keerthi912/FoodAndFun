<!DOCTYPE html>
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
<%@page import="java.sql.*"%>
<%@page import="com.ibm.dao.Dataconn"%>
<%@page import="com.ibm.model.login"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
<script type="text/javascript" src="registervalidation.js"></script>
</head>
 <%
String emailid=(String)session.getAttribute("Y");
String sql="select * from register where emailid=?";
ResultSet rs=Dataconn.upUser1(sql,emailid);
%>
<body onload="document.registration.fname.focus()">
<%
while(rs.next())
		{
		%>
<center>
<form action="UpdateServlet2" method="post" name="registration-" onsubmit="return formValidation()">
<label><strong><i>FirstName:</i></strong></label><input type="text" name="fname" placeholder="Enter first Name" value="<%=rs.getString(1)%>"><br><br>
<label><strong><i>LastName:</i></strong></label><input type="text" name="lname" placeholder="Enter Last Name" value="<%=rs.getString(2)%>"><br><br>
<label><strong><i>Contact:</i></strong></label><input type="text" name="contact" placeholder="Enter contact" value="<%=rs.getString(3)%>"><br><br>
<label><strong><i>Address:</i></strong></label><input type="text" name="address" placeholder="Enter Address" value="<%=rs.getString(4)%>"><br><br>

<label><strong><i>State</i></strong></label><select name="state">
<option value="<%=rs.getString(6)%>" disabled="disabled"><%=rs.getString(6)%></option>
<option value="default">Select a State</option>
<optgroup label="INDIA">
<option value="Delhi">Delhi</option>
<option value="AndhraPradesh">AndhraPradesh</option>
<option value="UttarPradesh">UttarPradesh</option>
</optgroup>
</select>
<br><br>
<label><strong><i>City:</i></strong></label><select name="city">
<option value="<%=rs.getString(7)%>" disabled="disabled"><%=rs.getString(7)%></option>
<option value="Default"> Select a city</option>
<optgroup label="AndhraPradesh">
<option value="Hyderabad">Hyderabad</option>
<option value="Vishakhapatnam">Vizag</option>
<option value="Vijaywada">Vijaywada</option>
</optgroup>
<optgroup label="UttarPradesh">
<option value="Noida">Noida</option>
<option value="Mathura">Mathura</option>
<option value="varanasi">varanasi</option>
</optgroup>
<optgroup label="Delhi">
<option value="Delhi">Delhi</option>
</optgroup>
</select><br><br>
<label><strong><i>Emailid:</i></strong></label><label><%=rs.getString(8)%></label><input type="hidden" name="loginid" placeholder="Enter Emailid Here" value="<%=rs.getString(8)%>"><br><br>
<label><strong><i>Password:</i></strong></label><input type="password" name="password" placeholder="Enter Password" value="<%=rs.getString(9)%>"><br><br>
<label><strong><i>Confirm Password:</i></strong></label><input type="text" name="password1" placeholder="Enter Confirm password" value="<%=rs.getString(9)%>"><br><br>
<label><strong><i>Date of Birth:</i></strong></label><input type="date" name="dob" value="<%=rs.getString(10)%>"><br><br>
<input type="submit" value="Update">
<input type="reset" value="Cancel">
</form>
<%}%>
<h3>${msg}</h3>
</center>

</body>
</html>