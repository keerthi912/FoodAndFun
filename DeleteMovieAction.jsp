
<%@ page import="java.sql.*" %>
<%@ page import="com.ibm.dao.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String [] movie=request.getParameterValues("X");
for(int i=0;i<movie.length;i++)
{
	
String sql="delete from movie where mname=?";
Dataconn.FetchMovie1(sql,movie[i]);
}
response.sendRedirect("DeleteMovie.jsp");


%>
</body>
</html>