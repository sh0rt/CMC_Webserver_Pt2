<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit School</title>
</head>
<body>
<%String[] string = new String[5];
string[0] = request.getParameter("emphasis1");
string[1] = request.getParameter("emphasis2");
string[2] = request.getParameter("emphasis2");
string[3] = request.getParameter("emphasis3");
string[4] = request.getParameter("emphasis4");
try{
((AdminHome)session.getAttribute("adminhome")).editSchool(
		request.getParameter("school"),
		request.getParameter("state"),
		request.getParameter("location"),
		request.getParameter("control"),
		Integer.parseInt(request.getParameter("numstudents")),
		Double.parseDouble(request.getParameter("percentfem")),
		Double.parseDouble(request.getParameter("satverbal")),
		Double.parseDouble(request.getParameter("satmath")),
		Double.parseDouble(request.getParameter("expenses")),
		Double.parseDouble(request.getParameter("percentfinaid")),
		Integer.parseInt(request.getParameter("numapplicants")),
		Double.parseDouble(request.getParameter("percentadmitted")),
		Double.parseDouble(request.getParameter("percentenrolled")),
		Integer.parseInt(request.getParameter("academicscale")),
		Integer.parseInt(request.getParameter("socialscale")),
		Integer.parseInt(request.getParameter("qualoflife")),
		string
	);
    response.sendRedirect("ManageSchools.jsp");
}catch(Exception ex){
	ex.printStackTrace(System.out);
	response.sendRedirect("ViewSchool.jsp?Error=1&ID="+request.getParameter("schoolID"));
}
	    %>
</body>
</html>