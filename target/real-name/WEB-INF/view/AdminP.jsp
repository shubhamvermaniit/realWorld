
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page isELIgnored="false" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<p>&nbsp;</p>
<p>&nbsp;</p> 
<p>&nbsp;</p>
<h1> <center>ADMIN PAGE</center></h1>
<c:url var="addAction" value="${pageContext.request.contextPath}/admin/add"></c:url>
<div class="container">
	<div class="row" style="overflow-x:auto;">
	<div class=col-xs-2></div>
	<div class="col-xs-8" style="overflow-x:auto;">
	<form:form action="${pageContext.request.contextPath}/admin/add1" modelAttribute="product" method="POST" enctype="multipart/form-data">
	<table  width="80%">
    <c:if test="${!empty product.productName}">
    <tr>
        <td width="25%">
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td width="25%">
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
        <td width="30%"></td>
        
    </tr>
    </c:if>
    <tr>
        <td width="25%">
            <form:label path="productName" >
           <spring:message text="Product" />
          
               
            </form:label>
        </td>
        <td width="25%">
            <form:input path="productName" />
        </td> 
        <td width="30%"><font color="red"><form:errors path="productName"></form:errors></td>
        
    </tr>
    <tr> 
   	 <td width="25%">
    <form:label path="brand">
            <spring:message text="Brand"/>
          
    </form:label>
      </td>
        <td width="25%">
            <form:input path="brand" />
        </td> 
        <td width="30%"><td><font color="red"><form:errors path="brand"></form:errors></td></td>
     
    
         
        </td>
        <td width="30%"></td>
        
    </tr>
    
     <tr>
     <td width="25%">
      <form:label path="color">
                <spring:message text="Color"/>
            </form:label>
            </td>
        <td width="25%">
           <form:select path="color">
				<form:option value="" label="--- Select ---" />
				<form:option value="Red">Red</form:option>  
                <form:option value="Green">Green</form:option>  
                <form:option value="Blue">Blue</form:option>  
                <form:option value="White">White</form:option>
                <form:option value="Pink">Pink</form:option>
                <form:option value="Black">Black</form:option>
                <form:option value="Gold">Gold</form:option>  
                <form:option value="Silver">Silver</form:option>
                <form:option value="Rose Gold">Rose Gold</form:option>     
                </form:select>
      </td>
     <td width="30%"><font color="red"><form:errors path="color"></form:errors></td>
  </tr>
     <tr>
   
        <td width="25%">
            <form:label path="productPrice">
                <spring:message text="Price"/>
                
            </form:label>
        </td>
        <td width="25%">
            <form:input path="productPrice" />
        </td>
        <td width="30%"></td>
    </tr>
    
      <tr>
        <td width="25%">
            <form:label path="productQty">
                <spring:message text="Quantity"/>
                  
                
            </form:label>
        <td width="30%"></td></td>
    </tr>
   
    
    
    
    
     <tr>
        <td width="25%">
            <form:label path="image">
                <spring:message text="Please select a image to upload a image"/>
            </form:label>
        </td>
        <td width="25%">
            <form:input path="image" type="file" />
        </td>
         <td width="30%">
            
        </td>
    </tr>
     <td width="25%">
            <form:label path="category">
                <spring:message text="Category"/>
            </form:label>
        </td>
       
      <td width="25%">
        <form:select path="category">
				<form:option value="" label="--- Select ---" />
				<form:option value="i-phone">I-Phone</form:option>  
                <form:option value="samsung">Samsung</form:option>  
                <form:option value="htc">HTC</form:option>  
                <form:option value="intex">Intex</form:option>
                
                   </form:select>
            </td>
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.productName}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.productName}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
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
<div class="row"><div class="col-xs-10"><center><h3 style="color:blue">Product List</h3></center></div></div>
<div class="row">
<div class="col-xs-1"></div>

<div class="col-xs-10">

<c:if test="${!empty itemlist}">
    <div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Color</th>
        <th>qty</th>
        <th>Price</th>
         <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${itemlist}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.productName}</td>
            <td>${product.brand}</td>
            <td>${product.color}</td>
            <td>${product.productQty}</td>
            <td>${product.productPrice}</td>           
            <td><a href="<c:url value='/edit/${product.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/delete/${product.id}' />" >Delete</a></td>
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
