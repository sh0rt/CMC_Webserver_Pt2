<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Schools</title>
</head>
<body>
	<h1>Manage Saved Schools</h1>
	<table border="3">
		<tbody>
			<tr>
				<th>School</th>
				<%
					for (int i = 0; i < session.getAttribute("user").getSchools().size(); i++) {
				%>
				<td>
					<button type="button" name="buttonRemove">Remove</button>
				</td>
				<td>
					<%
						session.getAttribute("user").getSchools().get(i).getName();
					%>
				</td>
				<td>
					<button type="button" name="buttonView">View</button>
				</td>
			</tr>
			<%
				}
			%>

		</tbody>
	</table>
</body>
</html>