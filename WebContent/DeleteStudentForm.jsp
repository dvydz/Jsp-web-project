<%@page import="java.util.List"%>
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
<form align="center" action="DeleteStudent.jsp">
<h3 align="center"><u>Student Delete Form</u></h3>
<table align="center">
<tr><td>ChooseStudentId:</td><td><select style="width:100%" name='sId'>
<%
List<Integer> list=StudentOperationsImpl.GetStudentIds();
for(int id:list)
{
	out.print("<option>"+id+"</option>");
}
%>
</select></td></tr>
<tr><td></td><td><input type="submit" value="delete"></td></tr>
</table>
</form>
</body>
</html>