<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administrator Menu</title>
</head>
<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
	<%
		if (session.getAttribute("user") == null || ((User) session.getAttribute("user")).getType() != 'a')
			response.sendRedirect("login.jsp?Error=5");
	%>
	<div id="AdmMenItems">
		<%User user = (User) session.getAttribute("user");%>
		<h1>Administrator Menu</h1>
		<p style="font-weight: bold">
			Hello,
			<%=user.getFirstName()%>.<hr>

		<hr>
		<a href="logout.jsp" id="logoutAH">Log Out</a>
	</div>
</body>
</html>