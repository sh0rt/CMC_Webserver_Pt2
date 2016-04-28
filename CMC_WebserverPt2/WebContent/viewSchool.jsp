<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>ViewSchoolPage</title>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<link rel="stylesheet" href="style.css" type="text/css"></link>
</head>
<body>
	<%
		if (session.getAttribute("user") == null || ((User) session.getAttribute("user")).getType() != 'u')
			response.sendRedirect("login.jsp?Error=5");
	%>
<%StudentHome student = ((StudentHome)session.getAttribute("studenthome"));
School school1 = student.getSchoolByID2(Integer.parseInt(request.getParameter("schoolID")));
String[] empha = student.getEmphasis(Integer.parseInt(request.getParameter("schoolID")));
School[] rschools = student.getRecommend(school1);
%>
	<div id="VieSchItems">
		<div id="pagewrap">
			<div id="sidebar">
				<a href="searchResults.jsp">Back to results</a><br>
				<a href="UserHome.jsp">Main menu</a><hr>
				<a href="#rec1">Recommendation #1</a><br>
				<a href="#rec2">Recommendation #2</a><br>
				<a href="#rec3">Recommendation #3</a><br>
				<a href="#rec4">Recommendation #4</a><br>
				<a href="#rec5">Recommendation #5</a><br>
				<a href="#VieSchItems">Return to top</a>
			</div>
			<%
					
				%>
			<span style="font-weight: bold;">VIEW SCHOOL</span> <br> <br>
			<form method="post" action="SaveSchool.jsp">
				<table style="text-align: left; height: 480px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school" value="<%=school1.getSchool() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state" value="<%=school1.getState() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control" value="<%=school1.getLocation() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=school1.getControl() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FEMALE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="female" value="<%=school1.getPercentFemale() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT VERBAL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satVerbal" value="<%=school1.getSatVerbal() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT MATH<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satMath" value="<%=school1.getSatMath() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EXPENSES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="expenses" value="<%=school1.getExpenses() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FINANCIAL
								AID<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="financialAid" value="<%=school1.getPercentFinAid() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								APPLICANTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfApplicants" value="<%=school1.getNumApplicants() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ADMITTED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="admitted" value="<%=school1.getPercentAdmitted() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ENROLLED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="enrolled" value="<%=school1.getPercentEnrolled() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC
								SCALE (1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="academicScale" value="<%=school1.getAcademicScale() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="socialScale" value="<%=school1.getSocialscale() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF
								LIFE SCALE(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="qualOfLife" value="<%=school1.getQualOfLife() %>"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EMPHASES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="emphases1" value="<%=empha[0]%>"><br> <input name="emphases2" value="<%=empha[1] %>"><br>
								<input name="emphases3" value="<%=empha[2] %>"><br> <input
								name="emphases4" value="<%=empha[3] %>"><br> <input name="emphases5" value="<%=empha[4] %>"><br></td>
						</tr>
					</tbody>
				</table>
				<br>
				<input name="saveschool2" value="save" type="submit"><br>
				<input type="hidden" name="schoolID" value="<%=student.getSchoolIDByName2(school1.getSchool())+1%>">
				</form>
				
				<br> <br> <br> <span style="font-weight: bold;">MAY
					WE ALSO RECOMMEND....</span><br> <br>
									<p id="rec1">Recommendation No. 1</p>
				<table style="text-align: left; height: 110px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school" value="<%=rschools[0].getSchool() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state" value="<%=rschools[0].getState() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control" value="<%=rschools[0].getControl() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[0].getNumStudents() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF LIFE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[0].getQualOfLife() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[0].getAcademicScale() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[0].getSocialscale() %>" readonly><br></td>
						</tr>
					</tbody>
				</table><br>
				<form action="SaveSchool.jsp" method="post">
				<input name="saveschool1" value="save" type="submit"><br>
				<input type="hidden" name="schoolID" value="<%=student.getSchoolIDByName2(rschools[0].getSchool())+1%>">
				</form>
				<br>
				<p id="rec2">Recommendation No. 2</p>
				<table style="text-align: left; height: 110px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school" value="<%=rschools[1].getSchool() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state" value="<%=rschools[1].getState() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control" value="<%=rschools[1].getControl() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[1].getNumStudents() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF LIFE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[1].getQualOfLife() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[1].getAcademicScale() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[1].getSocialscale() %>" readonly><br></td>
						</tr>
					</tbody>
				</table><br>
				<form action="SaveSchool.jsp" method="post">
				<input name="saveschool1" value="save" type="submit"><br>
				<input type="hidden" name="schoolID" value="<%=student.getSchoolIDByName2(rschools[1].getSchool())%>">
				</form>
				<br>
									<p id="rec3">Recommendation No. 3</p>
				<table style="text-align: left; height: 110px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school" value="<%=rschools[2].getSchool() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state" value="<%=rschools[2].getState() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control" value="<%=rschools[2].getControl() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[2].getNumStudents() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF LIFE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[2].getQualOfLife() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[2].getAcademicScale() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[2].getSocialscale() %>" readonly><br></td>
						</tr>
					</tbody>
				</table><br>
				<form action="SaveSchool.jsp" method="post">
				<input name="saveschool1" value="save" type="submit"><br>
				<input type="hidden" name="schoolID" value="<%=student.getSchoolIDByName2(rschools[2].getSchool())%>">
				</form>
				<br>
													<p id="rec4">Recommendation No. 4</p>
				<table style="text-align: left; height: 110px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school" value="<%=rschools[3].getSchool() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state" value="<%=rschools[3].getState() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control" value="<%=rschools[3].getControl() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[3].getNumStudents() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF LIFE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[3].getQualOfLife() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[3].getAcademicScale() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[3].getSocialscale() %>" readonly><br></td>
						</tr>
					</tbody>
				</table><br>
				<form action="SaveSchool.jsp" method="post">
				<input name="saveschool1" value="save" type="submit"><br>
				<input type="hidden" name="schoolID" value="<%=student.getSchoolIDByName2(rschools[3].getSchool())%>">
				</form>
				<br>
													<p id="rec5">Recommendation No. 5</p>
				<table style="text-align: left; height: 110px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school" value="<%=rschools[4].getSchool() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state" value="<%=rschools[4].getState() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control" value="<%=rschools[4].getControl() %>" readonly><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[4].getNumStudents() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF LIFE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[4].getQualOfLife() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[4].getAcademicScale() %>" readonly><br></td>
						</tr>
												<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents" value="<%=rschools[4].getSocialscale() %>" readonly><br></td>
						</tr>
					</tbody>
				</table><br>
				<form action="SaveSchool.jsp" method="post">
				<input name="saveschool1" value="save" type="submit"><br>
				<input type="hidden" name="schoolID" value="<%=student.getSchoolIDByName2(rschools[4].getSchool())%>">
				</form>
				<br>
		</div>
	</div>
</body>
</html>
