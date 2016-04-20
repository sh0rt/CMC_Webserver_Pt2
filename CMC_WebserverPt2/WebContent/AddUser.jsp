<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add User</title>
</head>
<body>
<%if(request.getParameter("Error") != null){
	if(request.getParameter("Error").equals("1"))
		out.print("<font color=\"red\">Error: Please enter in proper values</font>");
	}%>
	<center>
<h1>Add User</h1>
<form method="post" action="AddUserAction.jsp">
<table border="3">
<tbody>
<tr>
<td width="160px">First Name</td>
<td><input type="text" name= "first" ></td>
</tr>
<tr>
<td width="160px">Last Name</td>
<td><input type="text" name= "last"></td>
</tr>
<tr>
<td width="160px">Username</td>
<td><input type="text" name= "username"></td>
</tr>
<tr>
<td width="160px">Password</td>
<td><input type="text" name= "password"></td>
</tr>
<tr>
<td width="160px">Type</td>
<td><input type="text" name= "type"></td>
</tr>
</tbody>
</table>
<input type="submit" value="Add User">
<input type="Reset" value="Reset">
</form>
</center>
</body>
</html>