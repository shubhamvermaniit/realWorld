<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
</head>
<body>
    <div align="center">
        <form:form action="register" method="post" commandName="userForm">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Real-World Form - Registration</h2></td>
                </tr>
               
                <tr>
                    <td>FirstName:</td>
                    <td><form:input path="firstName" /></td>
                    <td><font color="red"></font><form:errors path="firstName"></form:errors></td>
                </tr>
                <tr>
    
    </tr>
                <tr>
                    <td>LastName:</td>
                    <td><form:input path="lastName" /></td>
                </tr>
                <tr>
                    <td>PhoneNo:</td>
                    <td><form:input path="phoneNo" /></td>
                   
                </tr>
                 
                   
                <tr>
                    <td>Email-Id:</td>
                    <td><form:input path="emailId" /></td>
                   <td><font color="red"></font><form:errors path="emailId"></form:errors></td>
                </tr>
                
              
                <tr>
                <td>Password</td>
                <td><form:password path="password" /></td>
                 <td><font color="red"><form:errors path="password"></form:errors></td>
                </tr>
                
                   
                <tr>
                <td>Gender:</td>
                <td><form:select path="gender">
  <form:option value="Male">Male</form:option>
  <form:option value="Female">female</form:option>
  </form:select>
  <td><font color="red"><form:errors path="gender"></form:errors></td>
  </td>
                </tr>
               
                    
                <tr>
                
                
                
                    <td colspan="2" align="center"><input type="submit" value="Register" /></td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>