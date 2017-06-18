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
<style>
t
{
font-family: "agentFB"
color: white;
}
</style>
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
						<li class="active"><a href="index.html">Home</a></li>
							<li><a href="Cuisine.html">Table booking</a></li>
							<li><a href="Wine.html">Movie Tickets</a></li>
							<li><a href="CookBook.html">Profile</a></li>
							<li><a href="Contacts.html">Contact</a></li>
					</ul>
				</nav>
			</header>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="registervalidation1.js"></script>
</head>
<body onload="document.registration.fname.focus()">
<form action="RegisterServlet" method="post" name="registration"  onsubmit="return formValidation()">
<center><font color="white">
<label><strong><i>FirstName:</i></strong></label><input type="text" name="fname" placeholder="Enter first Name" value="${fname}"><br><br>
<label><strong><i>LastName:</i></strong></label><input type="text" name="lname" placeholder="Enter Last Name" value="${lname}"><br><br>
<label><strong><i>Contact:</i></strong></label><input type="text" name="contact" placeholder="Enter contact" value="${contact}"><br><br>
<label><strong><i>Address:</i></strong></label><input type="text" name="address" placeholder="Enter Address" value="${address}"><br><br>
<label><strong><i>Gender:</i></strong></label><input type="radio" name="gender" value="male" checked="checked">Male
<input type="radio" name="gender" value="female">Female<br><br>
<label><strong><i>State</i></strong></label><select name="state">
<option value="Default">Select a State</option>
<optgroup label="INDIA">
<option value="Delhi">Delhi</option>
<option value="AndhraPradesh">AndhraPradesh</option>
<option value="UttarPradesh">UttarPradesh</option>
</optgroup>
</select>
<br><br>
<label><strong><i>City:</i></strong></label><select name="city">
<option value="Default"> Select a city</option>
<optgroup label="Delhi">
<option value="Delhi">Delhi</option>
</optgroup>
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
</select><br><br>
<label><strong><i>Emailid:</i></strong></label><input type="text" name="loginid" placeholder="Enter Emailid Here"><br><br>
<label><strong><i>Password:</i></strong></label><input type="password" name="passwrd" placeholder="Enter Password"><br><br>
<label><strong><i>Confirm Password:</i></strong></label><input type="text" name="password1" placeholder="Enter Confirm password"><br><br>
<label><strong><i>Date of Birth:</i></strong></label><input type="date" name="dob" value="${dob}" ><br><br>
<label><strong>Captcha</strong></label><img src="http://localhost:8080/foodandfun/Captchaa"><a href="register.jsp">Try Another</a><br><br>


<label><strong><i>captcha answer</i></strong></label><input type="text" name="code"><br><br>



<input type="submit" value="ReGisTer">
<input type="reset" value="Cancel"></font>
</center>
</form>
<h2>${msg}</h2>

</body>
</html>