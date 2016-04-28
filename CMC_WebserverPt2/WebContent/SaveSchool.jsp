<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
try{StudentHome student =  ((StudentHome)session.getAttribute("studenthome"));
student.saveSchool(Integer.parseInt(request.getParameter("schoolID")));
//response.sendRedirect("searchResults.jsp?Error=1");
response.sendRedirect("ManageSavedSchools.jsp");
}catch(Exception ex){
	ex.printStackTrace(System.out);
	response.sendRedirect("searchResults.jsp?Error=2");
}

%>
</body>
</html>
