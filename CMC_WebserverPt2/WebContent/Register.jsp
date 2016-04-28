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
	<a href="login.jsp" id="goback">Go back</a>
	<div id="regItems">
		<center>
			<h1>New User Registration</h1>
			<%
				String i = request.getParameter("Error");
				if (i.equals("1")) {%>
					<p class="ErrorMessage">Passwords did not match.</p>
				<%} else if (i.equals("2")) {%>
					<p class="ErrorMessage">Please fill out all fields and try again.</p>
				<%} else if (i.equals("3")) {%>
					<p class="ErrorMessage">Username is in use. Please choose a different one.</p>
				<%} else if (i.equals("6")) {%>
					<p class="ErrorMessage">Something went wrong. Please try again.</p>
				<%}%>
			<form method="post" action="RegisterAction.jsp">
				<table border="3">
					<tr>
						<td align="right">First Name</td>
						<td><input name="first" type="text" class="newUser"><br></td>
					</tr>
					<tr>
						<td align="right">Last Name</td>
						<td><input name="last" type="text" class="newUser"><br></td>
					</tr>
					<tr>
						<td align="right">Username</td>
						<td><input name="username" type="text" class="newUser"><br></td>
					</tr>
					<tr>
						<td align="right">Password</td>
						<td><input name="password" type="password" class="newUser"><br></td>
					</tr>
					<tr>
						<td align="right">Confirm Password</td>
						<td><input name="confirm" type="password" class="newUser"><br></td>
					</tr>
					<tr>
						<td></td>
						<td align="right"><input type="submit" name="submit"
							value="Register"></td>
					</tr>

				</table>
			</form>
		</center>
	</div>
</body>
</html>