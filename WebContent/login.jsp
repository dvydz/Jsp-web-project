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
String email=request.getParameter("email");   //email that you entered
String password=request.getParameter("password");
String status=StudentOperationsImpl.userValidation(email,password);   //need to import the page
if(status.equals("Success"))
{
	HttpSession session1=request.getSession();
	session1.setAttribute("email",email);
	response.sendRedirect("Operations.jsp");
}
else
	out.print("<h3> Failure </h3>");
%>

</body>
</html>