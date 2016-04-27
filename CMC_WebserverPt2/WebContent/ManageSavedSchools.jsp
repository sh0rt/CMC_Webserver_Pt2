<%@ page language="java" import="java.util.*" import="CMC_Classes.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Schools</title>
<link rel="stylesheet" href="style.css" type="text/css"></link>
</head>
<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
	<a href="UserHome.jsp" id="goback">Go back</a>
	<a href="logout.jsp" id="logout">Log Out</a>
	<div id="ManSavSchItems">
		<h1>Manage Saved Schools</h1>
		<table border="3" id="ManSavSch">
			<tbody>
				<tr>
					<td colspan="3" id="school">School</td>
				</tr>
				<%
					int i = 0;
					User user = (User) session.getAttribute("user");
					ArrayList<School> stuSavedSchools = new ArrayList<School>();
					String error = "User has no saved schools";
					try {
						stuSavedSchools = user.getSavedSchools();
						i = stuSavedSchools.size();
					} catch (NullPointerException npe) {
						out.print(error);
					}

					if (i == 0) {
				%>
				<tr>
					<td><input type="submit" value="Remove" id="removeButton"></td>
					<td><%=error%></td>
					<td><input type="submit" value="View" id="viewButton"></td>
				</tr>
				<%
					}
					for (int j = 0; j < i; j++) {
				%>
				<tr>
					<td><input type="submit" value="Remove" id="removeButton"></td>
					<td>
						<%
							try {
									out.print(stuSavedSchools.get(i).getName());
								} catch (IndexOutOfBoundsException iobe) {
						%><%=error%>
						<%
							}
						%>
					</td>
					<td><input type="submit" value="View" id="viewButton"></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<%
			if (i == 0) {
		%>
		<div id="HelpSearch">
			<p>
				It looks like you don't have any schools saved quite yet.<br>Would
				you like to <a href="searchSchoolMenu.jsp">search</a> for one? We
				will even<br>make some recommendations for you!
			</p>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>