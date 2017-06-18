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
String cardno=(String)session.getAttribute("CARD");
String seatno=request.getParameter("seatno");
String orderno=request.getParameter("orderno");
String quantity=request.getParameter("quantity");
System.out.println(seatno+""+orderno+""+quantity+""+cardno);
String sql="insert into order values(?,?,?,?)";
String msg=Dataconn.InsertCard2(sql, seatno, orderno, quantity, cardno);
if(msg.equals("success"))
{
	
	System.out.println(msg);
	response.sendRedirect("menu.jsp");
}
else
{
	System.out.println(msg);
}
%>
</body>
</html>