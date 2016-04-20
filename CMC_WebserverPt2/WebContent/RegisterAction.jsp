<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
</head>
<body>
<% if(!request.getParameter("password").equals(request.getParameter("confirm")))
	response.sendRedirect("Register.jsp?Error=1");
else if(request.getParameter("username") == null || request.getParameter("username").equals("")||
		  request.getParameter("username") == null || request.getParameter("username").equals("")||
		  request.getParameter("password") == null || request.getParameter("password").equals("")||
		  request.getParameter("first") == null || request.getParameter("first").equals("")||
		  request.getParameter("last") == null || request.getParameter("last").equals(""))
	  response.sendRedirect("Register.jsp?Error=2");
else if(!((UserHome)session.getAttribute("userhome")).register(
	request.getParameter("first"),request.getParameter("last"),
	request.getParameter("username"),request.getParameter("password")))
		response.sendRedirect("Register.jsp?Error=3");
else
	response.sendRedirect("login.jsp?Error=6");
  %>
  Error
</body>
</html>