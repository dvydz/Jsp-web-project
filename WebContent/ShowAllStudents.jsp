<%@page import="jspwebproject.StudentOperationsImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
<h3 align="center"><u>Student Table</u></h3>
<%
String responseText=StudentOperationsImpl.DisplayAllStudents();
out.print(responseText);
%>
</body>
</html>