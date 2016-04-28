<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit User</title>
</head>
	<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
<div id="edituser">
	<%
		if (session.getAttribute("user") == null || ((User) session.getAttribute("user")).getType() != 'a')
			response.sendRedirect("login.jsp?Error=5");
	%>
<a href="logout.jsp" id="logout">Log Out</a>
<a href="ManageUsers.jsp" id="goback">Go back</a>
<%if(request.getParameter("Error") != null){
	if(request.getParameter("Error") == "1")
		out.print("<p color='red'>Please enter in proper values</p>");
	}%>
<%User user = ((AdminHome)session.getAttribute("adminhome")).getUser(Integer.parseInt(request.getParameter("euser"))); %>
<center>
<h1>Edit User</h1>
<form method="post" action="EditUserAction.jsp">
<table border="3">
<tbody>
<tr>
<td width="160px">First Name</td>
<td><input type="text" name= "first" value="<%=user.getFirstName()%>"></td>
</tr>
<tr>
<td width="160px">Last Name</td>
<td><input type="text" name= "last" value="<%=user.getLastName()%>"></td>
</tr>
<tr>
<td width="160px">Username</td>
<td><input type="text" name= "username" value="<%=user.getUsername()%>" readonly></td>
</tr>
<tr>
<td width="160px">Password</td>
<td><input type="text" name= "password" value="<%=user.getPassword()%>"></td>
</tr>
<tr>
<td width="160px">Type</td>
<td><input type="text" name= "type" value="<%=user.getType()%>"></td>
</tr>
<tr>
<td width="160px">Status</td>
<td><input type="text" name= "status" value="<%=user.getStatus()%>"></td>
</tr>
</tbody>
</table>
<input type="submit" value="Edit User">
<input type="Reset" value="Reset">
</form>
</center>
</div>
</body>
</html>