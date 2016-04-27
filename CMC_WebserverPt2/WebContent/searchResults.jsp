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
	<div id="SeaResItems">
		<%
			StudentHome student = ((StudentHome) session.getAttribute("studenthome"));
		%>
		<a href="searchSchoolMenu.jsp" id="goback">Go back</a> <a
			href="logout.jsp" id="logout">Log Out</a>
		<center>
			<h1>Search Results</h1>
			<%
				if (request.getParameter("Error") != null) {
					if (request.getParameter("Error") == "1") {
						System.out.println("yaa");
						out.print("<p>succesfully saved School!</p>");
					} else if (request.getParameter("Error") == "2") {
						out.print("<p>An error occured</p>");
					}
				}
			%>
			<table border="3">
				<tbody>

					<tr>
						<td>
							<form action="SaveSchool.jsp" method="post">
								<input type="submit" name="Save" value="Save"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id1").toString()%>">
							</form>
						</td>
						<td width="400px">
							<center><%=student.getSchoolByID(Integer.parseInt(session.getAttribute("id1").toString())).getSchool()%></center>
						</td>
						<td>
							<form action="viewSchool.jsp" method="post">
								<input type="submit" name="view" value="View"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id1").toString()%>">
							</form>
					</tr>

					<tr>
						<td>
							<form action="SaveSchool.jsp" method="post">
								<input type="submit" name="Save" value="Save"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id2").toString()%>">
							</form>
						</td>
						<td width="400px">
							<center><%=student.getSchoolByID(Integer.parseInt(session.getAttribute("id2").toString())).getSchool()%></center>
						</td>
						<td>
							<form action="viewSchool.jsp" method="post">
								<input type="submit" name="view" value="View"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id2").toString()%>">
							</form>
					</tr>

					<tr>
						<td>
							<form action="SaveSchool.jsp" method="post">
								<input type="submit" name="Save" value="Save"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id3").toString()%>">
							</form>
						</td>
						<td width="400px">
							<center><%=student.getSchoolByID(Integer.parseInt(session.getAttribute("id3").toString())).getSchool()%></center>
						</td>
						<td>
							<form action="viewSchool.jsp" method="post">
								<input type="submit" name="view" value="View"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id3").toString()%>">
							</form>
					</tr>

					<tr>
						<td>
							<form action="SaveSchool.jsp" method="post">
								<input type="submit" name="Save" value="Save"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id4").toString()%>">
							</form>
						</td>
						<td width="400px">
							<center><%=student.getSchoolByID(Integer.parseInt(session.getAttribute("id4").toString())).getSchool()%></center>
						</td>
						<td>
							<form action="viewSchool.jsp" method="post">
								<input type="submit" name="view" value="View"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id4").toString()%>">
							</form>
					</tr>

					<tr>
						<td>
							<form action="SaveSchool.jsp" method="post">
								<input type="submit" name="Save" value="Save"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id5").toString()%>">
							</form>
						</td>
						<td width="400px">
							<center><%= student.getSchoolByID(Integer.parseInt(session.getAttribute("id5").toString())).getSchool() %></center>
						</td>
						<td>
							<form action="viewSchool.jsp" method="post">
								<input type="submit" name="view" value="View"> <input
									type="hidden" name="schoolID"
									value="<%=session.getAttribute("id5").toString()%>">
							</form>
					</tr>

				</tbody>
			</table>
		</center><br>
	</div>
</body>
</html>