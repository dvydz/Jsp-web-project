<%@page import="jspwebproject.StudentOperationsImpl"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
<form align="center" action="ShowStudent.jsp">
<h3 align="center"><u>Student Info </u></h3>
<table align="center">
<tr><td>ChooseStudentId</td><td><select style='width:100%' name="sId">
<% 
List<Integer> list=StudentOperationsImpl.GetStudentIds();
for(int id:list)
{
out.print("<option>"+id+"</option>");
}
%> 
</select></td></tr>
<tr><td></td><td><input type="submit" value="submit"></td></tr>

</table>
</form>
</body>
</html>