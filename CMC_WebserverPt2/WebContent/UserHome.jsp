<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Home</title>
</head>
<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
	<%
		if (session.getAttribute("user") == null || ((User) session.getAttribute("user")).getType() != 'u')
			response.sendRedirect("login.jsp?Error=5");
	%>
	<%
		User user = (User) session.getAttribute("user");
	%>
	<div id="UserHomeItems">
		<h1>Student Menu</h1>
		<p style="font-weight: bold">
			Hello,
			<%=user.getFirstName()%>! <hr><a href=ManageSavedSchools.jsp> Manage
				My Saved Schools </a> <br> <a href=searchSchoolMenu.jsp> Search
				for Schools </a> <br> <a href=ManageProfile.jsp> Manage My
				Profile </a> <br>
		<hr>
		<a href="logout.jsp" id="logoutUH">Log Out</a>
	</div>
</body>
</html>