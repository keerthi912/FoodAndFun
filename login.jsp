0
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="LoginServle" method="post">
Login:   <input type="text" name="login"><br>
Password:<input type="password" name="paswd"><br>
<input type="submit" value="SignIn">
<input type="reset" value="Refresh">
</form>
${msg}
</center>
</body>
</html>