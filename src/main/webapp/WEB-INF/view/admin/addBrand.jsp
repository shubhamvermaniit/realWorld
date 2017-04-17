
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page isELIgnored="false" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<p>&nbsp;</p>
<p>&nbsp;</p> 
<p>&nbsp;</p>
<h1> <center>BRAND LIST</center></h1>

<div class="container">
	<div class="row" style="overflow-x:auto;">
	<div class=col-xs-2></div>
	<div class="col-xs-8" style="overflow-x:auto;">
	<form:form action="${pageContext.request.contextPath}/addbrand" modelAttribute="brand" method="POST">
	<table  width="80%">
    <c:if test="${!empty brand.bname}">
    <tr>
        <td width="25%">
            <form:label path="brandid">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td width="25%">
            <form:input path="brandid" readonly="true" size="8"  disabled="true" />
            <form:hidden path="brandid" />
        </td> 
        <td width="30%"></td>
        
    </tr>
    </c:if>
    <tr>
        <td width="25%">
            <form:label path="bname" >
           <spring:message text="BrandName" />
          
               
            </form:label>
        </td>
        <td width="25%">
            <form:input path="bname" />
        </td> 
        <td width="30%"><font color="red"><form:errors path="bname"></form:errors></td>
        
    </tr>
   
    <tr>
        <td width="25%">
            <form:label path="bdesc" >
           <spring:message text="BrandDescription" />
          
               
            </form:label>
        </td>
        <td width="25%">
            <form:input path="bdesc" />
        </td> 
        <td width="30%"><font color="red"><form:errors path="bdesc"></form:errors></td>
        
    </tr>
    
    
     
    
    
    
    
     
    <tr>
        <td colspan="2">
            <c:if test="${!empty brand.bname}">
                <input type="submit"
                    value="<spring:message text="Edit brand"/>" />
            </c:if>
            <c:if test="${empty brand.bname}">
                <input type="submit"
                    value="<spring:message text="Add brand"/>" />
         </c:if>
        </td>
    </tr>
    
</table>  

</form:form>
</div>
<div class="col-xs-2"></div>
</div>
</div>
<br>
<div class="row"><div class="col-xs-10"><center><h3 style="color:blue">Brand List</h3></center></div></div>
<div class="row">
<div class="col-xs-1"></div>

<div class="col-xs-10">

<c:if test="${!empty brandlist}">
    <div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <thead>
    <tr>
    	<th>Id</th>
        <th>Name</th>
        <th>Description</th>    
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${brandlist}" var="brands">
        <tr>
            <td>${brands.brandid}</td>
            <td>${brands.bname}</td>
            <td>${brands.bdesc }</td>          
            <td><a href="<c:url value='/editbrand/${brands.brandid}' />" >Edit</a></td>
            <td><a href="<c:url value='/deletebrand/${brands.brandid}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    <tbody>
    </table>
 </div>
</c:if></div>
<div class="col-xs-1"></div>
</div>

<script src="/WEB-INF/resource/css/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
</body>


</html>
