<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<form action="login.jsp" method="post">
<h3 align="center"><u>Student Login Form</u></h3>
<table align="center">
<tr><td>EmailId</td><td><input type="text" name="email"></td></tr>
<tr><td>Password</td><td><input type="password" name="password"></td></tr>
<tr><td></td><td><input type="submit" value="Login"></td></tr>
</table>
</form>
</body>
</html>