<%@ page import="java.sql.*" %>
<%@ page import="com.ibm.dao.*" %>
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
							<li class="active"><a href="Cuisine.html">Table booking</a></li>
							<li><a href="Wine.html">Movie Tickets</a></li>
							<li><a href="CookBook.html">Login</a></li>
							<li><a href="Contacts.html">Contact</a></li>
					</ul>
				</nav>
			</header>
<!-- / header -->
<!-- content -->
<body>

	
						    <center><br><br>
							<h2>ADD A NEW MOVIES</h2>
							<form method="post" action="AddMovieServlet">
							<table width="429" border="0">
							  <tr>
								<td>Movie Name</td>
								<td><input type="text" name="mname" value="${sessionScope.mname}"/></td>
							  </tr>
							  <tr>
								<td>Screen</td>
								<td>
									<select name="screen">
										<option value="sc1">Screen1</option>
										<option value="sc2">Screen2</option>
										<option value="sc3">Screen3</option>
										<option value="sc4">Screen4</option>
									</select>
								</td>
							  </tr>
							  <tr>
								<td>Leading Actor Name</td>
								<td><input type="text" name="lname" value="${sessionScope.lname}"/></td>
							  </tr>
							  <tr>
								<td>Director Name</td>
								<td><input type="text" name="dname" value="${sessionScope.dname}"/></td>
							  </tr>
							  <tr>
								<td>Music</td>
								<td><input type="text" name="muname" value="${sessionScope.muname}"/></td>
							  </tr>
							  <tr>
								<td>DATE</td>
								<td><input type="date" name="date" value=""/></td>
							  </tr>
							  <tr>
								<td>&nbsp;</td>
								<td><input type="submit" value="Add Movie"/></td>
							  </tr>
							</table>
							</form>
							<br>
									<h2>Upload A picture for Movie</h2>
									<form action="UploadServlet" method="post" enctype="multipart/form-data">
									 <INPUT NAME="F1" TYPE="file" />
									 <INPUT TYPE="submit" VALUE="Send File" />
									 </form>
									 <br></br>
									 <div id="pic">
									 <% 
									 if(session.getAttribute("mname")!=null)
									 {
									 String mname=(String)session.getAttribute("mname");
									 System.out.println(mname+"FROM SESSION");
									 String sql2="select * from movie where mname=?";
									 ResultSet rs2=Dataconn.FetchMovie(sql2, mname);
									 while(rs2.next())
										{
											System.out.println("resultset"+rs2.getString(7));
											String mypath="images/"+rs2.getString(7);
											out.println("<img src='"+mypath+"' height='175' width='265'/>");
										}
									 }
									  %>
									 </div>
									 
									 <a href="AdminHome.jsp">ADMIN HOME</a>
					  </div>
					</div>
					
</body>
</html>
