<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>
<%@page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<form:form method="post" action="${pageContext.request.contextPath}/admin/add"  commandName="prod" enctype="multipart/form-data">
<table>
<c:if test="${!empty prod.productName}">
<tr>
<td width="25%">
<form:label path="id">
<spring:message text="ID"  />
</form:label>
</td>
<td width="25%">
<form:input path="id" readonly="true" size="7" disabled="true"/>
</td>
<td width="30%"></td>
</c:if>
<tr>
<td><form:label path="productName">Name</form:label></td>
<td><form:input path="productName"></form:input></td>

</tr>

<tr>
<td><form:label path="productPrice">Price</form:label></td>
<td><form:input path="productPrice" /></td>
<td></td>
</tr>

<tr>
<td><form:label path="productQty">Quantity</form:label></td>
<td><form:input path="productQty"/></td>
<td></td>
</tr>

<tr>
<td><form:label path="brand">Brand</form:label></td>
<td><form:input path="brand"/></td>

</tr>

<tr>
<td><form:label path="color">Color</form:label></td>
<td><form:input path="color"/></td>

</tr>


<tr>
<td><form:label path="image">Image</form:label></td>
<td><form:input path="image" type="file"/></td>

</tr>

 <tr>
               <td colspan = "2">
                 <c:if test="${!empty prod.productName}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty prod.productName}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
         </c:if>
               </td>
            </tr>
</table>

</form:form>
<br>
<c:if test="${!empty itemlist}">ProductList
<br>
<div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Color</th> 
        <th>Price</th> 
         <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${itemlist}" var="pd">
        <tr>
            <td>${pd.id}</td>
            <td>${pd.productName}</td>
            <td>${pd.brand}</td>
            <td>${pd.color}</td>
            <td>${pd.productPrice}</td>
                      
            <td><a href="<c:url value='/edit/${pd.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/delete/${pd.id}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    <tbody>
    </table>
 </div>


</c:if>
</body>
</html>