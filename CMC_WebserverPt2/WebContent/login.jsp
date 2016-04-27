<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="error.*,CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC Login</title>
</head>
<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>

	<div id="LogItems">
		<%
			if (request.getParameter("Error") != null)
				out.print("<font color=\"red\">"
						+ ErrorMessages.loginError(Integer.parseInt(request.getParameter("Error"))) + "</font>");
			UserHome userhome = new UserHome();
			session.setAttribute("userhome", userhome);
		%>
		<form method="post" action="LoginAction.jsp" name="login_form">

			<div style="text-align: center;"></div>
			<h2 style="text-align: center;">
				Welcome to CMC<br>
			</h2>
			<div style="text-align: center;">
				Username: <input name="username"><br>
			</div>
			<div style="text-align: center;">
				Password:&nbsp; <input name="password" type="password"><br>
			</div>
			<br>
			<div style="text-align: center;">
				<input value="Login" name="Login" type="Submit" class="actionButton">&nbsp;&nbsp;&nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="reset"
					value="Reset" type="reset" class="actionButton"><br>
			</div>
		</form>
		<center>
			<p>Admin login Username: user Password: pass</p>
			<p>Student login Username: juser Password: user
		</center>
		<p id="registerPrompt">
			Not in our System? <a href="Register.jsp">Register here!</a>
		<p />
	</div>
</body>
</html>