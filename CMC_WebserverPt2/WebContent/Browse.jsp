<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "CMC_Classes.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Browse Categories</title>
</head>
	<link rel="stylesheet" href="style.css" type="text/css"></link>
<body>
<%TopSchools top = new TopSchools();
ArrayList<String> largest = top.getPageInfo('a');
ArrayList<String> smallest = top.getPageInfo('b');
ArrayList<String> cheap = top.getPageInfo('c');
ArrayList<String> expensive = top.getPageInfo('d');
ArrayList<String> lowestad = top.getPageInfo('f');
ArrayList<String> highestad = top.getPageInfo('g');
%>
<div id="browse">
<table><tbody>
<tr><td><center><h1><%=largest.get(0)%></h1></center></td></tr>
<tr><td><center>1: <%=largest.get(1)%></center></td></tr>
<tr><td><center>2: <%=largest.get(2)%></center></td></tr>
<tr><td><center>3: <%=largest.get(3)%></center></td></tr>
<tr><td><center>4: <%=largest.get(4)%></center></td></tr>
<tr><td><center>5: <%=largest.get(5)%></center></td></tr>
<tr><td><center>6: <%=largest.get(6)%></center></td></tr>
<tr><td><center>7: <%=largest.get(7)%></center></td></tr>
<tr><td><center>8: <%=largest.get(8)%></center></td></tr>
<tr><td><center>9: <%=largest.get(9)%></center></td></tr>
<tr><td><center>10: <%=largest.get(10)%></center></td></tr>
</tbody>
</table>
<br>
<table><tbody>
<tr><td><center><h1><%=smallest.get(0)%></h1></center></td></tr>
<tr><td><center>1: <%=smallest.get(1)%></center></td></tr>
<tr><td><center>2: <%=smallest.get(2)%></center></td></tr>
<tr><td><center>3: <%=smallest.get(3)%></center></td></tr>
<tr><td><center>4: <%=smallest.get(4)%></center></td></tr>
<tr><td><center>5: <%=smallest.get(5)%></center></td></tr>
<tr><td><center>6: <%=smallest.get(6)%></center></td></tr>
<tr><td><center>7: <%=smallest.get(7)%></center></td></tr>
<tr><td><center>8: <%=smallest.get(8)%></center></td></tr>
<tr><td><center>9: <%=smallest.get(9)%></center></td></tr>
<tr><td><center>10: <%=smallest.get(10)%></center></td></tr>
</tbody>
</table>
<br>
<table><tbody>
<tr><td><center><h1><%=cheap.get(0)%></h1></center></td></tr>
<tr><td><center>1: <%=cheap.get(1)%></center></td></tr>
<tr><td><center>2: <%=cheap.get(2)%></center></td></tr>
<tr><td><center>3: <%=cheap.get(3)%></center></td></tr>
<tr><td><center>4: <%=cheap.get(4)%></center></td></tr>
<tr><td><center>5: <%=cheap.get(5)%></center></td></tr>
<tr><td><center>6: <%=cheap.get(6)%></center></td></tr>
<tr><td><center>7: <%=cheap.get(7)%></center></td></tr>
<tr><td><center>8: <%=cheap.get(8)%></center></td></tr>
<tr><td><center>9: <%=cheap.get(9)%></center></td></tr>
<tr><td><center>10: <%=cheap.get(10)%></center></td></tr>
</tbody>
</table>

<br>

<table><tbody>
<tr><td><center><h1><%=expensive.get(0)%></h1></center></td></tr>
<tr><td><center>1: <%=expensive.get(1)%></center></td></tr>
<tr><td><center>2: <%=expensive.get(2)%></center></td></tr>
<tr><td><center>3: <%=expensive.get(3)%></center></td></tr>
<tr><td><center>4: <%=expensive.get(4)%></center></td></tr>
<tr><td><center>5: <%=expensive.get(5)%></center></td></tr>
<tr><td><center>6: <%=expensive.get(6)%></center></td></tr>
<tr><td><center>7: <%=expensive.get(7)%></center></td></tr>
<tr><td><center>8: <%=expensive.get(8)%></center></td></tr>
<tr><td><center>9: <%=expensive.get(9)%></center></td></tr>
<tr><td><center>10: <%=expensive.get(10)%></center></td></tr>
</tbody>
</table>

<br>

<table><tbody>
<tr><td><center><h1><%=highestad.get(0).substring(0,31)%><br><%= highestad.get(0).substring(31)%></h1></center></td></tr>
<tr><td><center>1: <%=highestad.get(1)%></center></td></tr>
<tr><td><center>2: <%=highestad.get(2)%></center></td></tr>
<tr><td><center>3: <%=highestad.get(3)%></center></td></tr>
<tr><td><center>4: <%=highestad.get(4)%></center></td></tr>
<tr><td><center>5: <%=highestad.get(5)%></center></td></tr>
<tr><td><center>6: <%=highestad.get(6)%></center></td></tr>
<tr><td><center>7: <%=highestad.get(7)%></center></td></tr>
<tr><td><center>8: <%=highestad.get(8)%></center></td></tr>
<tr><td><center>9: <%=highestad.get(9)%></center></td></tr>
<tr><td><center>10: <%=highestad.get(10)%></center></td></tr>
</tbody>
</table>
<br>
<table><tbody>
<tr><td><center><h1><%=lowestad.get(0).substring(0,30)%><br><%= lowestad.get(0).substring(30)%></h1></center></td></tr>
<tr><td><center>1: <%=lowestad.get(1)%></center></td></tr>
<tr><td><center>2: <%=lowestad.get(2)%></center></td></tr>
<tr><td><center>3: <%=lowestad.get(3)%></center></td></tr>
<tr><td><center>4: <%=lowestad.get(4)%></center></td></tr>
<tr><td><center>5: <%=lowestad.get(5)%></center></td></tr>
<tr><td><center>6: <%=lowestad.get(6)%></center></td></tr>
<tr><td><center>7: <%=lowestad.get(7)%></center></td></tr>
<tr><td><center>8: <%=lowestad.get(8)%></center></td></tr>
<tr><td><center>9: <%=lowestad.get(9)%></center></td></tr>
<tr><td><center>10: <%=lowestad.get(10)%></center></td></tr>
</tbody>
</table>
</div>
</body>
</html>