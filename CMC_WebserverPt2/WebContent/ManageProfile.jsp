<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Manage Profile </title>
</head>
<body>
<%User user = (User)session.getAttribute("user");%>
m
<center>
<h1>Manage Profile </h1>
<form method="post" action="ManageProfileAction.jsp">
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
<td><input type="text" name= "type" value="<%=user.getType()%>" readonly></td>
</tr>
</tbody>
</table>
<input type="submit" value="Edit User"">
<input type="Reset" value="Reset">
</form>
</center>
</body>
</html>