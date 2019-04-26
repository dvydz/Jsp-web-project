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
int result=StudentOperationsImpl.DeleteStudent(sId);
if(result>0)
{
	out.print("<h3> Record Successfully deleted </h3>");
}
else
	out.print("<h3> Record does not exist ! </h3>");
%>
</body>
</html>