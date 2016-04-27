<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC_Classes.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View School Action from Search Page</title>
</head>
<body>
<% 
//trying to get the school the user clicked to show up in the html table,
//not sure what the attribute for studentUI is but it's complaining about me using studentUI
//that's the only class that had a view expanded school method that I saw, feel free to change
//it if you find another
String[] emphasis = new String[5];
emphasis[0] = request.getParameter("emphases1");
emphasis[1] = request.getParameter("emphases2");
emphasis[2] = request.getParameter("emphases3");
emphasis[3] = request.getParameter("emphases4");
emphasis[4] = request.getParameter("emphases5");
((StudentUI)session.getAttribute("studentinterface")).viewExpandedSchool(
request.getParameter("school"),
request.getParameter("state"),
request.getParameter("location"),
request.getParameter("control"),
request.getParameter("numOfStudents"),
request.getParameter("female"),
request.getParameter("satVerbal"),
request.getParameter("satMath"),
request.getParameter("expenses"),
request.getParameter("financialAid"),
request.getParameter("numOfApplicants"),
request.getParameter("admitted"),
request.getParameter("enrolled"),
request.getParameter("academicScale"),
request.getParameter("socialScale"),
request.getParameter("qualOfLife"),
emphasis);
%>
<% 
//trying to get the recommendations to fill the html table
((StudentHome)session.getAttribute("studenthome")).getRecommend();
%>
</body>
</html>