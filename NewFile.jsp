<%@page import="java.sql.ResultSet"%>
<%@page import="com.ibm.dao.Dataconn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</body>
</html>