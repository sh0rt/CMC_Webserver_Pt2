<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "error.*,CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC Login</title>
</head>
<body>
<div align = "right"> 
<p>Not in our System? <a href="Register.jsp">Register here!</a><p/>
</div>
<%if(request.getParameter("Error") != null)
	out.print("<font color=\"red\">"+ErrorMessages.loginError(Integer.parseInt(request.getParameter("Error"))) +"</font>");
	UserHome userhome = new UserHome();
	session.setAttribute("userhome", userhome);%>
<form method="post" action="LoginAction.jsp" name="login_form">

<div style="text-align: center;"> </div>
<h2 style="text-align: center;">Welcome to CMC<br>
</h2>
<div style="text-align: center;">Username: <input name="username"><br>
</div>
<div style="text-align: center;">Password:&nbsp; <input
name="password" type="password"><br>
</div>
<div style="text-align: center;"><input value="Submit" name="Login"
type="Submit">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="reset"
value="Reset" type="reset"><br>
</div>
</form>
<center><p> Admin login Username: user Password: pass</p>
<p>Student login Username: juser Password: user</center>
</body>
</html>