<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit School</title>
</head>
<body>

<%School school = ((AdminHome)session.getAttribute("adminhome")).getSchools().get(Integer.parseInt(request.getParameter("schoolID"))); %>
<center>
<h1>Edit User</h1>
<form method="post" action="EditSchoolAction.jsp">
<table border="3">
<tbody>
<tr>
<td width="160px">School</td>
<td><input type="text" name= "first" value="<%=school.getSchool()%>"readonly></td>
</tr>
<tr>
<td width="160px">State</td>
<td><input type="text" name= "last" value="<%=school.getState()%>"></td>
</tr>
<tr>
<td width="160px">Location</td>
<td><input type="text" name= "username" value="<%=school.getLocation()%>"></td>
</tr>
<tr>
<td width="160px">Control</td>
<td><input type="text" name= "password" value="<%=school.getControl()%>"></td>
</tr>
<tr>
<td width="160px"># of Students</td>
<td><input type="text" name= "type" value="<%=school.getNumStudents()%>"></td>
</tr>
<tr>
<td width="160px">Percent Female</td>
<td><input type="text" name= "status" value="<%=school.getPercentFemale()%>"></td>
</tr>
<tr>
<td width="160px">SAT Verbal</td>
<td><input type="text" name= "password" value="<%=school.getSatVerbal()%>"></td>
</tr>
<tr>
<td width="160px">SAT Math</td>
<td><input type="text" name= "password" value="<%=school.getSatMath()%>"></td>
</tr>
<tr>
<td width="160px">Expenses</td>
<td><input type="text" name= "password" value="<%=school.getExpenses()%>"></td>
</tr>
<tr>
<td width="160px">% Financial Aid</td>
<td><input type="text" name= "password" value="<%=school.getPercentFinAid()%>"></td>
</tr>
<tr>
<td width="160px">Number of Applicants</td>
<td><input type="text" name= "password" value="<%=school.getNumApplicants()%>"></td>
</tr>
<tr>
<td width="160px">Percent Admitted</td>
<td><input type="text" name= "password" value="<%=school.getPercentAdmitted()%>"></td>
</tr>
<tr>
<td width="160px">Percent Enrolled</td>
<td><input type="text" name= "password" value="<%=school.getPercentEnrolled()%>"></td>
</tr>
<tr>
<td width="160px">Academic Scale</td>
<td><input type="text" name= "password" value="<%=school.getAcademicScale()%>"></td>
</tr>
<tr>
<td width="160px">Social Scale</td>
<td><input type="text" name= "password" value="<%=school.getSocialscale()%>"></td>
</tr>
<tr>
<td width="160px">Quality of Life</td>
<td><input type="text" name= "password" value="<%=school.getQualOfLife()%>"></td>
</tr>
</tbody>
</table>
<input type="submit" value="Edit School">
<input type="Reset" value="Reset">
</form>
</center>

</body>
</html>