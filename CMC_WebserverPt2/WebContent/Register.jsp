<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
</head>
	<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
<a href="login.jsp" id="goback">Go back</a><br>
<center>
<h1>New User Registration</h1>
<form method="post"action="RegisterAction.jsp">
<table>
<tr>
	<td align="right">First Name:</td><td> <input name="first" type="text"><br></td>
</tr><tr>
	<td align="right">Last Name:</td><td> <input name="last" type="text"><br></td>
	</tr><tr>
	<td align="right">Username:</td><td> <input name="username" type="text"><br></td>
	</tr><tr>
	<td align="right">Password:</td><td> <input name="password" type="password"><br></td>
	</tr><tr>
    <td align="right">Confirm Password:</td><td> <input name="confirm" type="password"><br></td>
    </tr><tr><td></td>
    <td align = "right"><input type="submit" name="submit" value = "Register"></td>
    </tr>

</table>
</form>
</center>
</body>
</html>