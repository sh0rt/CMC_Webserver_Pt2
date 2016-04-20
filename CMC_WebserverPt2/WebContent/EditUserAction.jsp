<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit User Action</title>
</head>
<body>
<%((AdminInterface)session.getAttribute("adminInterface")).editUser(
		request.getParameter("first"),
		request.getParameter("last"),
		request.getParameter("username"),
		request.getParameter("password"),
		request.getParameter("type").charAt(0),
		request.getParameter("status").charAt(0));
	response.sendRedirect("ManageUsers.jsp");
%>
</body>
</html>