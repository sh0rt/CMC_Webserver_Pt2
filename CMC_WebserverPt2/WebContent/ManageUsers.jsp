
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*, CMC_Classes.User, CMC_Classes.AdminHome"%>
<%
	if (session.getAttribute("user") == null || ((User) session.getAttribute("user")).getType() != 'a')
		response.sendRedirect("login.jsp?Error=5");
	else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Users</title>
</head>
	<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
<a href="logout.jsp" id="logout">Log Out</a>
<a href="adminhome.jsp" id="goback">Go back</a>
	<center>
		<table border="3">
			<tbody>
				<tr>
					<th colspan="17"><center>
							<h1>Users Currently in the CMC System</h1>
						</center></th>
				</tr>
				<tr>
					<th colspan="17"><a href="AddUser.jsp">Add New User</a></th>
				</tr>

				<tr>
					<th></th>
					<th></th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Password</th>
					<th>Type</th>
					<th>Status</th>
					<th></th>
				</tr>

				<%
					ArrayList<User> users = ((AdminHome) session.getAttribute("adminhome")).getUsers();
						for (int i = 0; i < users.size(); i++) {
				%>
				<tr>
					<td>
						<form action="DeactivateUser.jsp" method="post">
							<input type="hidden" name="duser" value=<%=i%>> <input
								type="submit" value="Deactivate">
						</form>
					</td>
					<td width="20px"></td>
					<td><%=users.get(i).getFirstName()%></td>
					<td><%=users.get(i).getLastName()%></td>
					<td><%=users.get(i).getUsername()%></td>
					<td><%=users.get(i).getPassword()%></td>
					<td><%=users.get(i).getType()%></td>
					<td><%=users.get(i).getStatus()%></td>
					<td>
						<form action="EditUser.jsp" method="post">
							<input type="hidden" name="euser" value=<%=i%>> <input
								type="submit" value="Edit">
						</form>
					</td>
				</tr>
				<%}} %>


			</tbody>
		</table>
	</center>
</body>
</html>