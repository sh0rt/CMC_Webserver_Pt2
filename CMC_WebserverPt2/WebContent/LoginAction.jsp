<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*,dblibrary.project.csci230.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>

<%if(request.getParameter("username") == "" && request.getParameter("password") == "")
	  response.sendRedirect("login.jsp?Error=4");
    else if(request.getParameter("username") == "")
	  response.sendRedirect("login.jsp?Error=2");
    else if(request.getParameter("password") == "")
	  response.sendRedirect("login.jsp?Error=3");
    else{
	UserHome userhome = new UserHome();
	session.setAttribute("userhome", userhome);
	User user = userhome.login(request.getParameter("username"), request.getParameter("password"));
	session.setAttribute("user", user);
	if(user == null)
		response.sendRedirect("login.jsp?Error=1");
	else if(user.getType() == 'a'){
	 // session.setAttribute("admin",user);
	 // session.setAttribute("adminInterface",new AdminInterface(user));
	  session.setAttribute("adminhome",new AdminHome(user));
	  response.sendRedirect("adminhome.jsp");
	}else if(user.getType() == 'u'){
		session.setAttribute("studenthome", new StudentHome(user));
		response.sendRedirect("UserHome.jsp");
		//go to user web page
	}else
		out.print("ERROR");
		}%>
</body>
</html>