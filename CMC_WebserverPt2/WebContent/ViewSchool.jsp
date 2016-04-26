<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit School</title>
</head>
	<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
<a href="logout.jsp" id="logout">Log Out</a>
<a href="ManageSchools.jsp" id="goback">Go back</a>
<center>
<form method="post" action="EditSchoolAction.jsp">
<%
School school = null;
if(request.getParameter("Error") != null){
	if(request.getParameter("Error") == "1")
		out.print("<p color='red'>Please enter in proper values</p>");
	    out.print("<input type='hidden' name='schoolID' value="+ request.getParameter("ID")+">");
	    school = ((AdminHome)session.getAttribute("adminhome")).getSchools().get(Integer.parseInt(request.getParameter("ID"))); 
	    
	}else
	  school = ((AdminHome)session.getAttribute("adminhome")).getSchools().get(Integer.parseInt(request.getParameter("schoolID"))); 
      out.print("<input type='hidden' name='schoolID' value="+ request.getParameter("schoolID")+">");
	
		%>

<h1>Edit School</h1>

<table border="3">
<tbody>
<tr>
<td width="160px">School</td>
<td><input type="text" name= "school" value="<%=school.getSchool()%>"readonly></td>
</tr>
<tr>
<td width="160px">State</td>
<td><input type="text" name= "state" value="<%=school.getState()%>"></td>
</tr>
<tr>
<td width="160px">Location</td>
<td><input type="text" name= "location" value="<%=school.getLocation()%>"></td>
</tr>
<tr>
<td width="160px">Control</td>
<td><input type="text" name= "control" value="<%=school.getControl()%>"></td>
</tr>
<tr>
<td width="160px"># of Students</td>
<td><input type="text" name= "numstudents" value="<%=school.getNumStudents()%>"></td>
</tr>
<tr>
<td width="160px">Percent Female</td>
<td><input type="text" name= "percentfem" value="<%=school.getPercentFemale()%>"></td>
</tr>
<tr>
<td width="160px">SAT Verbal</td>
<td><input type="text" name= "satverbal" value="<%=school.getSatVerbal()%>"></td>
</tr>
<tr>
<td width="160px">SAT Math</td>
<td><input type="text" name= "satmath" value="<%=school.getSatMath()%>"></td>
</tr>
<tr>
<td width="160px">Expenses</td>
<td><input type="text" name= "expenses" value="<%=school.getExpenses()%>"></td>
</tr>
<tr>
<td width="160px">% Financial Aid</td>
<td><input type="text" name= "percentfinaid" value="<%=school.getPercentFinAid()%>"></td>
</tr>
<tr>
<td width="160px">Number of Applicants</td>
<td><input type="text" name= "numapplicants" value="<%=school.getNumApplicants()%>"></td>
</tr>
<tr>
<td width="160px">Percent Admitted</td>
<td><input type="text" name= "percentadmitted" value="<%=school.getPercentAdmitted()%>"></td>
</tr>
<tr>
<td width="160px">Percent Enrolled</td>
<td><input type="text" name= "percentenrolled" value="<%=school.getPercentEnrolled()%>"></td>
</tr>
<tr>
<td width="160px">Academic Scale</td>
<td><input type="text" name= "academicscale" value="<%=school.getAcademicScale()%>"></td>
</tr>
<tr>
<td width="160px">Social Scale</td>
<td><input type="text" name= "socialscale" value="<%=school.getSocialscale()%>"></td>
</tr>
<tr>
<td width="160px">Quality of Life</td>
<td><input type="text" name= "qualoflife" value="<%=school.getQualOfLife()%>"></td>
</tr>
<tr>
<td width="160px">Emphasis</td>
<td>
<input type="text" name= "emphasis1" value="<%=school.getEmphasisfive()[0]%>"><br>
<input type="text" name= "emphasis2" value="<%=school.getEmphasisfive()[1]%>"><br>
<input type="text" name= "emphasis3" value="<%=school.getEmphasisfive()[2]%>"><br>
<input type="text" name= "emphasis4" value="<%=school.getEmphasisfive()[3]%>"><br>
<input type="text" name= "emphasis5" value="<%=school.getEmphasisfive()[4]%>"><br>
</td>
</tr>
</tbody>
</table>
<input type="submit" value="Apply Changes">
<input type="Reset" value="Cancel Changes">
</form>
</center>

</body>
</html>