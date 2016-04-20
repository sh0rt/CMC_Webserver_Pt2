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
			</tr>
			<%
					for (int i = 0; i < 3; i++) {
				%>
			<tr>
				<td><input type="submit" value="Remove"></td>
				<td>hi</td>
				<td><input type="submit" value="View"></td>
			</tr>
			<%
				}
			%>

		</tbody>
	</table>
</body>
</html>