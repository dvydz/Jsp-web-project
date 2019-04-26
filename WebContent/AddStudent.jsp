<%@page import="jspwebproject.StudentOperationsImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sId=request.getParameter("sId");
String sName=request.getParameter("sName");
String sCourse=request.getParameter("sCourse");
String sFees=request.getParameter("sFees");
int result=StudentOperationsImpl.AddStudent(sId, sName, sCourse, sFees);
if(result>0)
{
	out.print("<h3> Record Inserted Successfully </h3>");
}
else
	out.print("<h3> Record already exist for the student Id </h3>");
%>

</body>
</html>