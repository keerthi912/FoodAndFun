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
<script type="text/javascript" src="ordervalidation.js"></script>
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
						<li><a href="Wine.html">Movie Tickets</a></li>
			
						<li><a href="Contacts.html">Contact</a></li>
					</ul>
				</nav>
			</header>
<!-- / header -->
<!-- content -->
			<article id="content">
				<div class="wrap">
					<section class="col-1-3"><div class="wrap-col">
						<div class="box">
						
						</div>
					</div></section>
					<section class="col-1-3"><div class="wrap-col">
						<div class="box">
							
						</div>
					</div></section>
					<section class="col-1-3"><div class="wrap-col">
						<div class="box">
							
						</div>
					</div></section>
				</div>
			</article>
		</div>
	</div>
</div>
<div class="body2">
	<div class="main zerogrid">
		<article id="content2">
			<section>
				
					
					</div>
		
						<h2 style="padding-left: 10px;">Our Menu List</h2>
							<ul class="price">
							    <li>(1)Veg Soup<span>Rs 99/-</span></li>
								<li>(2)Corn Soup<span>Rs 99/-</span></li>
								<li>(3)Butter Naan<span>Rs 45/-</span></li>
								<li>(4)Saag Aloo<span>Rs 99/-</span></li>
								<li>(5)Sambuca Drink<span>Rs 119/-</span></li>
								<li>(6)Tiamaria Drink<span>Rs 115/-</span></li>
								<li>(7)Chicken Biryani<span>Rs 250/-</span></li>
								<li>(8)Mutton Biryani<span>Rs 280/-</span></li>
								<li>(9)Mexican Fried Rice<span>Rs 180/-</span></li>
								<li>(10)Veg Biryani<span>Rs 180/-</span></li>
								<li>(11)Chicken Manchuria<span>Rs 340/-</span></li>
								<li>(12)Egg rice<span>Rs 200/-</span></li>
                                <li>(13)Chaana Masala<span>Rs 150/-</span></li>
								<li>(14)Chicken Wings<span>Rs 290/-</span></li>
								<li>(15)Chicken 65<span>Rs 300/-</span></li>
								<li>(16)Paneer Rice<span>Rs 140/-</span></li>
								<li>(17)Pulao Rice<span>Rs 180/-</span></li>
								<li>(18)Pita Bread<span>Rs 120/-</span></li>
								<li>(19)Garlic Naan<span>Rs 180/-</span></li>
								<li>(20)Mattar Paneer<span>Rs 190/-</span></li>
                                <li>(21)Sea Food Tofu<span>Rs 260/-</span></li>
								<li>(22)Strawberry Icecream<span>Rs 160/-</span></li>
								<li>(23)Fruit Pastry<span>Rs 280/-</span></li>
								<li>(24)Toffee Drink<span>Rs 120/-</span></li>
							
								
							</ul><br><br></body>
							<body onload="document.order.seatno.focus()">
							<center>
<form action="card2.jsp" method="post" name="order" onsubmit="return formValidation()">

<label><strong><i>Seat no:</i></strong></label><input type="text" name="seatno" placeholder="Enter seat no." value="${seatno}"><br><br>
<label><strong><i>Order nos:</i></strong></label><input type="text" name="orderno" placeholder="Enter order no.s" value="${orderno}"><br><br>
<label><strong><i>Quantity:</i></strong></label><input type="text" name="quantity" placeholder="Enter quantity" value="${quantity}"><br><br>			
				<input type="submit" value="Order">
				</form>
				</center>
				</body>
				<html>

<body>
<section class="col-4-3"><div class="wrap-col">
						<div class="box">
							
						</div>
					</div></section>
					<center><h2 style="padding-left: 10px;">${msg}</h2></center>

<center><a href="index.html" class="button1">go back</a></center>
</body>
</html>
						</div></div>
						
					</div>
					
				</div>
			</section>
		</article>
<!-- / content -->
	</div>
</div>
<div class="body3">

		<div class="main zerogrid">
<!-- footer -->
			<footer>
				<div class="wrapper">
					<section class="col-2-3"><div class="wrap-col">
						<h3>Toll Free: <span>040-23333336</span></h3>
						
					</div></section>
					<section class="col-1-3"><div class="wrap-col">
						<h3>Follow Us </h3>
						<ul id="icons">
							<li><a href="#" class="normaltip" title="Facebook"><img src="images/icon1.gif" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon2.gif" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Twitter"><img src="images/icon3.gif" alt=""></a></li>
													</ul>
					</div></section>
				</div>
				<!-- {%FOOTER_LINK} -->
			</footer>
<!-- / footer -->
		</div>

</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>