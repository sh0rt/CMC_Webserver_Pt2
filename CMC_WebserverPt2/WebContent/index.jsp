<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC</title>
</head>
	<link rel="stylesheet" href="style.css" type="text/css"></link>
<body background="image.jpg" >

<%session.setAttribute("adminHome", null);
  session.setAttribute("adminInterface", null);
  session.setAttribute("studenthome", null);
  session.setAttribute("user", null);
 %>
<center>
<h1>Welcome to CMC, let's find you a handy dandy college</h1>
<form action="login.jsp">
<input type="submit" value ="Continue to Website">
</form>
</center>
</body>
</html>