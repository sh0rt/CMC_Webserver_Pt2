<%@ page language="java" import="java.util.*" import="CMC_Classes.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="CMC_Classes.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>SearchResults</title>
<link rel="stylesheet" href="style.css" type="text/css"></link>
</head>
<body>
<<<<<<< HEAD
<%
School[] schools = new School[10];
StudentHome home = ((StudentHome)session.getAttribute("studentHome"));
schools[0] = home.getSchoolByID(Integer.parseInt(request.getParameter("school1")));
schools[1] = home.getSchoolByID(Integer.parseInt(request.getParameter("school2")));
schools[2] = home.getSchoolByID(Integer.parseInt(request.getParameter("school3")));
schools[3] = home.getSchoolByID(Integer.parseInt(request.getParameter("school4")));
schools[4] = home.getSchoolByID(Integer.parseInt(request.getParameter("school5")));
schools[5] = home.getSchoolByID(Integer.parseInt(request.getParameter("school6")));
schools[6] = home.getSchoolByID(Integer.parseInt(request.getParameter("school7")));
schools[7] = home.getSchoolByID(Integer.parseInt(request.getParameter("school8")));
schools[8] = home.getSchoolByID(Integer.parseInt(request.getParameter("school9")));
schools[9] = home.getSchoolByID(Integer.parseInt(request.getParameter("school10")));
%>
<div style="text-align: center;"><font size="+1"><span
style="font-weight: bold;">Schools</span></font><br>
<table style="text-align: left; width: 696px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>

<tr>
<td style="vertical-align: top; width: 116px;"><form name="row1save" method="post" 
action="saveSchoolAction.jsp">
<input type="hidden" name="schoolID" value="Integer.parseInt(request.getParameter("school1"))">
<input name="Save"
value="Save" type="button"><br>
</form>
</td>
<td style="vertical-align: top; width: 447px;"><input readonly="readonly"
name="School"><br>
</td>

<td style="vertical-align: top; width: 107px;"><form name="row1view" method="post" 
action="viewSchoolAction.jsp">
<input type="hidden" name="schoolID" value="Integer.parseInt(request.getParameter("school1"))">
<input name="View"
value="View" type="button"><br>
</td>
</tr>


<tr>
<td style="vertical-align: top; width: 116px;"><form name="row2save" method="post" 
action="saveSchoolAction.jsp">
<input type="hidden" name="schoolID" value="Integer.parseInt(request.getParameter("school2"))">
<input name="Save"
value="Save" type="button"><br>
</td>

<td style="vertical-align: top; width: 447px;"><form name="row2view" method="post" 
action="viewSchoolAction.jsp">
<input type="hidden" name="schoolID" value="Integer.parseInt(request.getParameter("school2"))">
<input
readonly="readonly" name="School"></td>
<td style="vertical-align: top; width: 107px;"><input name="View"
value="View" type="button"></td>
</tr>


<tr>
<td style="vertical-align: top; width: 116px;"><form name="row3save" method="post" 
action="saveSchoolAction.jsp">
<input type="hidden" name="schoolID" value="Integer.parseInt(request.getParameter("school3"))">
<input name="Save"
value="Save" type="button">
</td>

<td style="vertical-align: top; width: 447px;"><form name="row3view" method="post" 
action="viewSchoolAction.jsp"><input
readonly="readonly" name="School"></td>
<td style="vertical-align: top; width: 107px;">
<input type="hidden" name="schoolID" value="Integer.parseInt(request.getParameter("school3"))">
<input name="View"
value="View" type="button"></td>
</tr>


<tr>
<td style="vertical-align: top; width: 116px;"><form name="row4save" method="post" 
action="saveSchoolAction.jsp">
<input type="hidden" name="schoolID" value="Integer.parseInt(request.getParameter("school4"))">
<input name="Save"
value="Save" type="button">
</td>

<td style="vertical-align: top; width: 447px;"><input
readonly="readonly" name="School"></td>
<td style="vertical-align: top; width: 107px;"><input name="View"
value="View" type="button">
</td>
</tr>


<tr>
<td style="vertical-align: top; width: 116px;"><input name="Save"
value="Save" type="button">
</td>

<td style="vertical-align: top; width: 447px;"><input
readonly="readonly" name="School"></td>
<td style="vertical-align: top; width: 107px;"><input name="View"
value="View" type="button">
</td>
</tr>


</tbody>
</table>
<br>
</div>
=======
	<div id="AdmSeaResItems">
		<div style="text-align: center;">
			<a href="adminhome.jsp" id="goback">Go back</a> <a href="logout.jsp"
				id="logout">Log Out</a>
			<h1>Schools</h1>
			<table style="text-align: left; width: 696px;" border="1"
				cellpadding="2" cellspacing="2">
				<tbody>
					<tr>
						<td style="vertical-align: top; width: 116px;"><input
							name="Save" value="Save" type="button"><br></td>
						<td style="vertical-align: top; width: 447px;"><input
							readonly="readonly" name="School"><br></td>
						<td style="vertical-align: top; width: 107px;"><input
							name="View" value="View" type="button"><br></td>
					</tr>
					<tr>
						<td style="vertical-align: top; width: 116px;"><input
							name="Save" value="Save" type="button"><br></td>
						<td style="vertical-align: top; width: 447px;"><input
							readonly="readonly" name="School"></td>
						<td style="vertical-align: top; width: 107px;"><input
							name="View" value="View" type="button"></td>
					</tr>
					<tr>
						<td style="vertical-align: top; width: 116px;"><input
							name="Save" value="Save" type="button"></td>
						<td style="vertical-align: top; width: 447px;"><input
							readonly="readonly" name="School"></td>
						<td style="vertical-align: top; width: 107px;"><input
							name="View" value="View" type="button"></td>
					</tr>
					<tr>
						<td style="vertical-align: top; width: 116px;"><input
							name="Save" value="Save" type="button"></td>
						<td style="vertical-align: top; width: 447px;"><input
							readonly="readonly" name="School"></td>
						<td style="vertical-align: top; width: 107px;"><input
							name="View" value="View" type="button"></td>
					</tr>
					<tr>
						<td style="vertical-align: top; width: 116px;"><input
							name="Save" value="Save" type="button"></td>
						<td style="vertical-align: top; width: 447px;"><input
							readonly="readonly" name="School"></td>
						<td style="vertical-align: top; width: 107px;"><input
							name="View" value="View" type="button"></td>
					</tr>
				</tbody>
			</table>
			<br>
		</div>
	</div>
>>>>>>> branch 'master' of https://github.com/sh0rt/CMC_Webserver_Pt2.git
</body>
</html>