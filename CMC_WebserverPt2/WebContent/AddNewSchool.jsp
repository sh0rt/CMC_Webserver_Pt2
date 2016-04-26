<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New School</title>
</head>
	<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
<%if(request.getParameter("Error") != null){
	if(request.getParameter("Error").equals("1"))
		out.print("<font color=\"red\">Error: Please enter in proper values</font>");
	}%>
<a href="logout.jsp" id="logout">Log Out</a>
<a href="ManageUsers.jsp" id="goback">Go back</a>
	<center> 
	<h1>Add School</h1>
<form method="post" action="AddNewSchoolAction.jsp">
<table style="text-align: left; width: 400px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 400px;">SCHOOL<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="school"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">STATE<br>
</td>
<td style="vertical-align: top; width: 100px;"><input name="state"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">LOCATION<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="location"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">CONTROL<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="control"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="numstudents"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">% FEMALE<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="percentfemale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">SAT VERBAL<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="satverbal"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">SAT MATH<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="satmath"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">EXPENSES<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="expenses"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="percentfinaid"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">NUMBER OF
APPLICANTS<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="numapplicants"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">% ADMITTED<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="percentadmitted"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">% ENROLLED<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="percentenrolled"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">ACADEMIC SCALE
(1-5)<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="academicscale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">SOCIAL SCALE (1-5)<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="socialscale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">QUALITY OF LIFE
SCALE (1-5)<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="qualoflife"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 300px;">EMPHASES<br>
</td>
<td style="vertical-align: top; width: 100px;"><input
name="emphasis1"><br><input name="emphasis2"><br><input name="emphasis3"><br><input
name="emphasis4"><br><input name="emphasis5"><br>
</td>
</tr>
</tbody>
</table>
<input name="addschool" value="ADD SCHOOL" type="submit"> &nbsp;<input
name="cancelchanges" value="CANCEL CHANGES" type="reset"> <br>
</form> 
</center>
</body>
</html>