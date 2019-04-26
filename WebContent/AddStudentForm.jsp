<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
<form action="AddStudent.jsp">
<h2 align="center"><u>Student Insert Form</u></h2>
<table align="center">
<tr><td>StudentId</td><td><input type="text" name="sId"></td></tr>
<tr><td>StudentName</td><td><input type="text" name="sName"></td></tr>
<tr><td>StudentCourse</td><td><input type="text" name="sCourse"></td></tr>
<tr><td>StudentFees</td><td><input type="text" name="sFees"></td></tr>
<tr><td></td><td><input type="submit" value="insert"></td></tr>

</table>
</form>
</body>
</html>