<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
</head>
<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
<%StudentHome student =  ((StudentHome)session.getAttribute("studenthome"));%>
	<a href="searchSchoolMenu.jsp" id="goback">Go back</a>
	<a href="logout.jsp" id="logout">Log Out</a>
<center>
<h1>Search Results</h1>
<table border="3">
<tbody>

<tr>
<td>
<form action="SaveSchool.jsp" method="post">
<input type="submit" name="Save" value="Save">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school1")%>">
</form>
</td><td width="400px">
<center><%=student.getSchoolByID(Integer.parseInt(request.getParameter("school1"))).getSchool() %></center>
</td><td>
<form action="viewSchool.jsp" method="post">
<input type="submit" name="view" value="View">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school1")%>">
</form>
</tr>

<tr>
<td>
<form action="SaveSchool.jsp" method="post">
<input type="submit" name="Save" value="Save">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school2")%>">
</form>
</td><td width="400px">
<center><%=student.getSchoolByID(Integer.parseInt(request.getParameter("school2"))).getSchool() %></center>
</td><td>
<form action="viewSchool.jsp" method="post">
<input type="submit" name="view" value="View">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school2")%>">
</form>
</tr>

<tr>
<td>
<form action="SaveSchool.jsp" method="post">
<input type="submit" name="Save" value="Save">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school3")%>">
</form>
</td><td width="400px">
<center><%=student.getSchoolByID(Integer.parseInt(request.getParameter("school3"))).getSchool() %></center>
</td><td>
<form action="viewSchool.jsp" method="post">
<input type="submit" name="view" value="View">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school3")%>">
</form>
</tr>

<tr>
<td>
<form action="SaveSchool.jsp" method="post">
<input type="submit" name="Save" value="Save">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school4")%>">
</form>
</td><td width="400px">
<center><%=student.getSchoolByID(Integer.parseInt(request.getParameter("school4"))).getSchool() %></center>
</td><td>
<form action="viewSchool.jsp" method="post">
<input type="submit" name="view" value="View">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school4")%>">
</form>
</tr>

<tr>
<td>
<form action="SaveSchool.jsp" method="post">
<input type="submit" name="Save" value="Save">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school5")%>">
</form>
</td><td width="400px">
<center><%=student.getSchoolByID(Integer.parseInt(request.getParameter("school5"))).getSchool() %></center>
</td><td>
<form action="viewSchool.jsp" method="post">
<input type="submit" name="view" value="View">
<input type="hidden" name="schoolID" value="<%=request.getParameter("school5")%>">
</form>
</tr>

</tbody>
</table>

</center>
</body>
</html>