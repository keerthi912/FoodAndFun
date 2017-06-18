<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

<h1>USER LOGIN</h1>
<form action="SendEmail" method="get">
		  <table>
		  <tr><td>Trader Email</td><td><input type="text" name="email" /></td></tr>
		  <tr><td></td><td><input  type="submit" value="Send Mail" /></td></tr>
		  </table>
		  </form>
		  <%
		  if(request.getAttribute("MSG")!=null)
			{
				out.println("<font color='red'>"+request.getAttribute("MSG"));
			}
		  
		  %>
</div>
</div>
</div>
</div>
</body>
</html>