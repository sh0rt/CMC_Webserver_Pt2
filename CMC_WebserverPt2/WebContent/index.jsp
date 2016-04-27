<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC</title>
</head>
<link rel="stylesheet" href="style.css" type="text/css"></link>

<body>
	<div id="IndexItems">
		<%
			session.setAttribute("adminHome", null);
			session.setAttribute("adminInterface", null);
			session.setAttribute("studenthome", null);
			session.setAttribute("user", null);
		%>
		<center>

			<h1>Welcome to CMC</h1>
			<p>Let's find you a handy dandy college.</p>
			<br>
			<form action="login.jsp">
				<input type="submit" value="Continue to Website" class="actionButton">
			</form>
		</center>
	</div>
	<br>
	<img src="https://gif-avatars.com/img/100x100/test.gif" alt="Leading you to success" title="Leading you to success"/>
</body>
</html>