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
			<form method="post" action="SearchSchoolsAction.jsp">
				<table style="text-align: left; height: 480px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FEMALE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="female"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT VERBAL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satVerbal"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT MATH<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satMath"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EXPENSES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="expenses"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FINANCIAL
								AID<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="financialAid"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								APPLICANTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfApplicants"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ADMITTED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="admitted"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ENROLLED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="enrolled"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC
								SCALE (1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="academicScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="socialScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF
								LIFE SCALE(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="qualOfLife"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EMPHASES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="emphases1"><br> <input name="emphases2"><br>
								<input name="emphases3"><br> <input
								name="emphases4"><br> <input name="emphases5"><br></td>
						</tr>
					</tbody>
				</table>
				<br> <br> <br> <span style="font-weight: bold;">MAY
					WE ALSO RECOMMEND....</span><br> <br>
					<p id="rec1">Recommendation No. 1</p>
				<table style="text-align: left; height: 480px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FEMALE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="female"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT VERBAL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satVerbal"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT MATH<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satMath"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EXPENSES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="expenses"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FINANCIAL
								AID<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="financialAid"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								APPLICANTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfApplicants"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ADMITTED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="admitted"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ENROLLED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="enrolled"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC
								SCALE (1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="academicScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="socialScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF
								LIFE SCALE(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="qualOfLife"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EMPHASES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="emphases1"><br> <input name="emphases2"><br>
								<input name="emphases3"><br> <input
								name="emphases4"><br> <input name="emphases5"><br></td>
						</tr>
					</tbody>
				</table>
				<input name="saveschool1" value="save" type="submit"><br>
				<br>
				<p id="rec2">Recommendation No. 2</p>
				<table style="text-align: left; height: 480px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FEMALE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="female"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT VERBAL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satVerbal"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT MATH<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satMath"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EXPENSES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="expenses"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FINANCIAL
								AID<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="financialAid"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								APPLICANTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfApplicants"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ADMITTED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="admitted"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ENROLLED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="enrolled"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC
								SCALE (1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="academicScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="socialScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF
								LIFE SCALE(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="qualOfLife"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EMPHASES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="emphases1"><br> <input name="emphases2"><br>
								<input name="emphases3"><br> <input
								name="emphases4"><br> <input name="emphases5"><br></td>
						</tr>
					</tbody>
				</table>
				<input name="saveschool2" value="save" type="submit"><br>
				<br>
				<p id="rec3">Recommendation No. 3</p>
				<table style="text-align: left; height: 480px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FEMALE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="female"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT VERBAL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satVerbal"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT MATH<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satMath"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EXPENSES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="expenses"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FINANCIAL
								AID<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="financialAid"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								APPLICANTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfApplicants"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ADMITTED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="admitted"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ENROLLED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="enrolled"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC
								SCALE (1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="academicScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="socialScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF
								LIFE SCALE(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="qualOfLife"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EMPHASES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="emphases1"><br> <input name="emphases2"><br>
								<input name="emphases3"><br> <input
								name="emphases4"><br> <input name="emphases5"><br></td>
						</tr>
					</tbody>
				</table>
				<input name="saveschool3" value="save" type="submit"><br>
				<br>
				<p id="rec4">Recommendation No. 4</p>
				<table style="text-align: left; height: 480px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FEMALE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="female"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT VERBAL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satVerbal"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT MATH<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satMath"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EXPENSES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="expenses"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FINANCIAL
								AID<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="financialAid"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								APPLICANTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfApplicants"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ADMITTED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="admitted"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ENROLLED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="enrolled"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC
								SCALE (1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="academicScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="socialScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF
								LIFE SCALE(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="qualOfLife"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EMPHASES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="emphases1"><br> <input name="emphases2"><br>
								<input name="emphases3"><br> <input
								name="emphases4"><br> <input name="emphases5"><br></td>
						</tr>
					</tbody>
				</table>
				<input name="saveschool4" value="save" type="submit"><br>
				<br>
				<p id="rec5">Recommendation No. 5</p>
				<table style="text-align: left; height: 480px; width: 553px;"
					border="1" cellpadding="2" cellspacing="2">
					<tbody>
						<tr>
							<td style="vertical-align: top; width: 247px;">SCHOOL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="school"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">STATE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="state"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">CONTROL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="control"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								STUDENTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfStudents"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FEMALE<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="female"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT VERBAL<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satVerbal"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SAT MATH<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="satMath"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EXPENSES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="expenses"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% FINANCIAL
								AID<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="financialAid"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">NUMBER OF
								APPLICANTS<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="numOfApplicants"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ADMITTED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="admitted"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">% ENROLLED<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="enrolled"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">ACADEMIC
								SCALE (1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="academicScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">SOCIAL SCALE
								(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="socialScale"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">QUALITY OF
								LIFE SCALE(1-5)<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="qualOfLife"><br></td>
						</tr>
						<tr>
							<td style="vertical-align: top; width: 247px;">EMPHASES<br>
							</td>
							<td style="vertical-align: top; width: 288px;"><input
								name="emphases1"><br> <input name="emphases2"><br>
								<input name="emphases3"><br> <input
								name="emphases4"><br> <input name="emphases5"><br></td>
						</tr>
					</tbody>
				</table>
				<input name="saveschool5" value="save" type="submit"><br>
			</form>
		</div>
	</div>
</body>
</html>
