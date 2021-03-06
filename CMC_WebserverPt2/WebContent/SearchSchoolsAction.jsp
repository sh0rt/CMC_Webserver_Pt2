<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Schools Action</title>
</head>
<body>
<%
String name = request.getParameter("schoolName");
String state = request.getParameter("state");
String location = request.getParameter("location");
String control = request.getParameter("control");
int[] numStudents = new int[2];
double[] satVerbal = new double[2];
double[] satMath = new double[2];
int[] numApplicants = new int[2];
double[] percentFemale = new double[2];
double[] expenses = new double[2];
double[] percentFinAid = new double[2];
double[] percentAdmitted = new double[2];
double[] percentEnrolled = new double[2];
int[] academicScale = new int[2];
int[] socialScale = new int[2];
int[] qualOfLife = new int[2];
try{
numStudents[0] = Integer.parseInt(request.getParameter("numberOfStudents"));
numStudents[1] = Integer.parseInt(request.getParameter("numberOfStudents1"));
}catch(NumberFormatException ex){}
try{
satVerbal[0] = Double.parseDouble(request.getParameter("satVerbal"));
satVerbal[1] = Double.parseDouble(request.getParameter("satVerbal1"));
}catch(NumberFormatException ex){}
try{
satMath[0] = Double.parseDouble(request.getParameter("satMath"));
satMath[1] = Double.parseDouble(request.getParameter("satMath1"));
}catch(NumberFormatException ex){}
try{
numApplicants[0] = Integer.parseInt(request.getParameter("numOfApplicants"));
numApplicants[1] = Integer.parseInt(request.getParameter("numOfApplicants1"));
}catch(NumberFormatException ex){}
try{
percentFemale[0] = Double.parseDouble(request.getParameter("female"));
percentFemale[1] = Double.parseDouble(request.getParameter("female1"));
}catch(NumberFormatException ex){}
try{
expenses[0] = Double.parseDouble(request.getParameter("expenses"));
expenses[1] = Double.parseDouble(request.getParameter("expenses1"));
}catch(NumberFormatException ex){}
try{
percentFinAid[0] = Double.parseDouble(request.getParameter("financialAid"));
percentFinAid[1] = Double.parseDouble(request.getParameter("financialAid1"));
}catch(NumberFormatException ex){}
try{
percentAdmitted[0] = Double.parseDouble(request.getParameter("admitted"));
percentAdmitted[1] = Double.parseDouble(request.getParameter("admitted1"));
}catch(NumberFormatException ex){}
try{
percentEnrolled[0] = Double.parseDouble(request.getParameter("enrolled"));
percentEnrolled[1] = Double.parseDouble(request.getParameter("enrolled1"));
}catch(NumberFormatException ex){}
try{
academicScale[0] = Integer.parseInt(request.getParameter("academicScale"));
academicScale[1] = Integer.parseInt(request.getParameter("academicScale1"));
}catch(NumberFormatException ex){}
try{
socialScale[0] = Integer.parseInt(request.getParameter("socialScale"));
socialScale[1] = Integer.parseInt(request.getParameter("socialScale1"));
}catch(NumberFormatException ex){}
try{
qualOfLife[0] = Integer.parseInt(request.getParameter("qualOfLife"));
qualOfLife[1] = Integer.parseInt(request.getParameter("qualOfLife1"));
}catch(NumberFormatException ex){}
String[] emphasis = new String[5];
emphasis[0] = request.getParameter("emphases1");
emphasis[1] = request.getParameter("emphases2");
emphasis[2] = request.getParameter("emphases3");
emphasis[3] = request.getParameter("emphases4");
emphasis[4] = request.getParameter("emphases5");
int[] results = ((StudentHome)session.getAttribute("studenthome")).search(
		name, state, location, control, 
		numStudents, satVerbal,satMath, 
		numApplicants, percentFemale, 
		expenses, percentFinAid, percentAdmitted, percentEnrolled,
		academicScale, socialScale, qualOfLife, emphasis);
%>
<%session.setAttribute("id1", results[0]);
session.setAttribute("id2", results[1]);
session.setAttribute("id3", results[2]);
session.setAttribute("id4", results[3]);
session.setAttribute("id5", results[4]);
response.sendRedirect("searchResults.jsp"); %>
</body>
</html>