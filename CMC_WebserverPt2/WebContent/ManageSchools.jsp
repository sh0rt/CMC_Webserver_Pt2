<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, CMC_Classes.School, CMC_Classes.*"%>
        <%if(session.getAttribute("user")==null || ((User)session.getAttribute("user")).getType()!='a')
		response.sendRedirect("login.jsp?Error=5");
	  else{%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Schools</title>
</head>
<body>
<a href="adminhome.jsp">Go back to home</a>
<center>
<table border ="3">
<tbody>

<tr><th colspan="17"><center><h1>Schools Currently in the CMC System</h1></center></th></tr>
<tr><th colspan="17"><a href="AddNewSchool.jsp">Add New School</a></th></tr>

<tr>
<th>School</th>
<th>State</th>
<th>Location</th>
<th>Control</th>
<th># of Students</th>
<th>% Females</th>
<th>SAT Verbal</th>
<th>SAT Math</th>
<th>Expenses</th>
<th>% with<br>Financial<br>Aid</th>
<th># of<br>Applicants</th>
<th>% Admitted</th>
<th>% Enrolled</th>
<th>Academics<br>Scale (1-5)</th>
<th>Social<br>Scale<br>(1-5)</th>
<th>Quality<br>of Life<br>Scale<br>(1-5)</th>
<td></td>
</tr>

<% ArrayList<School> schools = ((AdminHome)session.getAttribute("adminhome")).getSchools();
for(int i=0; i< schools.size(); i++){ %>
<tr>
<td><%=schools.get(i).getSchool()%></td>
<td><%=schools.get(i).getState()%></td>
<td><%=schools.get(i).getLocation()%></td>
<td><%=schools.get(i).getControl()%></td>
<td><%=schools.get(i).getNumStudents()%></td>
<td><%=schools.get(i).getPercentFemale()%></td>
<td><%=schools.get(i).getSatVerbal()%></td>
<td><%=schools.get(i).getSatMath()%></td>
<td><%=schools.get(i).getExpenses()%></td>
<td><%=schools.get(i).getPercentFinAid()%></td>
<td><%=schools.get(i).getNumApplicants()%></td>
<td><%=schools.get(i).getPercentAdmitted()%></td>
<td><%=schools.get(i).getPercentEnrolled()%></td>
<td><%=schools.get(i).getAcademicScale()%></td>
<td><%=schools.get(i).getSocialscale()%></td>
<td><%=schools.get(i).getQualOfLife()%></td>
<td>
<form action="ViewSchool.jsp" method="post">
<input type="hidden" name="schoolID" value = <%=i%>>
<input type="submit" value="Edit"> 
</form>
</td>
</tr>
<%} }%>
</tbody>
</table>
</center> 
</body>
</html>