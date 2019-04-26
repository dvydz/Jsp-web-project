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
String pwd=request.getParameter("pwd");
String cpwd=request.getParameter("cpwd");
HttpSession session1=request.getSession();				//need to create this session first to retrieve attribute
String email=(String)session1.getAttribute("email");
if(pwd.equals(cpwd))
{
 	int result=StudentOperationsImpl.UpdatePassword(pwd,email);
 	if(result>0)
		out.print("<h3> Password SuccessFully Changed </h3>");
 	else
 		out.print("<h3>Error</h3>");
}
else
{
	out.print("<h3> Passwords do not match");

	out.print("<a href='ChangePasswordForm.jsp'><h3>TryAgain</h3></a>");
}
%>
</body>
</html>