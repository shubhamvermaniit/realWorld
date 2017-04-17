<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>
<html>
<head>

<style>
<link rel="stylesheet"
 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
.login{
top: 50%;
left: 50%;
}


.wrap
{
    width: 100%;
    height: 100%;
    min-height: 100%;
    position: absolute;
	margin-left:300px;
	align:centre;
    z-index: 99;
}

p.form-title
{
    font-family: 'Open Sans' , sans-serif;
    font-size: 20px;
    font-weight: 600;
    text-align: center;
    color: #FFFFFF;
    margin-left:10px;
    margin-top: 5%;
    text-transform: uppercase;
    letter-spacing: 4px;
}

form
{
	align:centre;
    width: 250px;
}

form.login input[type="text"], form.login input[type="password"]
{
    width: 100%;
    margin: 0;
    padding: 5px 10px;
    background: 0;
    border: 0;
    border-bottom: 1px solid #FFFFFF;
    outline: 0;
    font-style: italic;
    font-size: 12px;
    font-weight: 400;
    letter-spacing: 1px;
    margin-bottom: 5px;
    color: #FFFFFF;
    outline: 0;
}

form.login input[type="submit"]
{
    width: 100%;
    font-size: 14px;
    text-transform: uppercase;
    font-weight: 500;
    margin-top: 16px;
    outline: 0;
    cursor: pointer;
    letter-spacing: 1px;
}

form.login input[type="submit"]:hover
{
    transition: background-color 0.5s ease;
}


form.login label, form.login a
{
    font-size: 12px;
    font-weight: 400;
    color: #FFFFFF;
}

form.login a
{
    transition: color 0.5s ease;
}

form.login a:hover
{
    color: #2ecc71;
}

.pr-wrap
{
    width: 100%;
    height: 100%;
    min-height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 999;
    display: none;
}



</style>
</head>
<body background="resource/images/bg.jpg">
<form:form method="POST" action="login" commandName="ulogin" >
    <div class="wrap">
      <p class="form-title">LOGIN</p>
         <div class="login">
         <form:input type="text" path="emailId" placeholder="emailid" />
         <br>
         <br>
         <br>
         <form:input type="password" path="password" placeholder="Password" />
         <br>
         <br>
         <br>
         <form:button type="submit" value="SUBMIT" class="btn btn-success btn-sm">SUBMIT</form:button>
         </div></div>
         </form:form>
           		 
</body>
</html>
        
