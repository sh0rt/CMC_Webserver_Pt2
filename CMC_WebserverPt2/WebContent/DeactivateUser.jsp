<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Deactivate User</title>
</head>
<body>
<%=Integer.parseInt(request.getParameter("duser")) %>
<%
 out.print(((AdminInterface)session.getAttribute("adminInterface")).
 		deactivateUser(Integer.parseInt(request.getParameter("duser"))));
   response.sendRedirect("ManageUsers.jsp");
%> 
</body>
</html>