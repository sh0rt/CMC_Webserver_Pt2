<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add School Action</title>
</head>
<body>
<%try{
	String[] emphases = new String[5];
	emphases[0] = request.getParameter("emphasis1");
	emphases[1] = request.getParameter("emphasis2");
	emphases[2] = request.getParameter("emphasis3");
	emphases[3] = request.getParameter("emphasis4");
	emphases[4] = request.getParameter("emphasis5");
	((AdminHome)session.getAttribute("adminhome")).addNewSchool(
		request.getParameter("school"),
		request.getParameter("state"),
		request.getParameter("location"),
		request.getParameter("control"),
		Integer.parseInt(request.getParameter("numstudents")),
		Double.parseDouble(request.getParameter("percentfemale")),
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
		emphases);
		response.sendRedirect("ManageSchools.jsp");
}catch(Exception ex){
	response.sendRedirect("AddNewSchool.jsp?Error=1");
	ex.printStackTrace(System.out);
}
		 %>
</body> 
</html>