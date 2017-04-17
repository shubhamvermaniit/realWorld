<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checklogin here</title>
</head>
<body>
<%
String str1=request.getParameter("username");
String str2=request.getParameter("password");
if(str1.equalsIgnoreCase("shubham")&& str2.equals("java"))
{
	out.println("<h3>your login become succesfull now for product you will click on submit</h3>");
	
}
else
{
	out.println("<h3>sorry you entered wrong name and password please check the password and try again thanks!</h3>");
}

%>

</body>
</html>