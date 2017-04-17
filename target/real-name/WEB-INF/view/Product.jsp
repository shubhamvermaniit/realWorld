<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>
<%@page isELIgnored="false" %>
<html>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>

<div ng-app="myApp" ng-controller="namesCtrl">

<p>Type a letter in the input field:</p>

<p><input type="search" ng-model="searchText" placeholder="search here" class="form-control"></p>


 <div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <caption>{{prod.Category}}</caption>
    <thead style="color:#CD5C5C">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Color</th>
        <th>Size</th>
        <th>Category</th>
        <th>Price</th>
        <th>More</th>
    </tr>
    </thead>
    <tbody>
    
        <tr ng-repeat="p in prod|filter:searchText">
            <td>{{p.id}} </td>
            <td>{{p.productName}}</td>
            <td>{{p.brand}}</td>
            <td>{{p.color}}</td>
            <td>{{p.brand}}</td>
            <td>{{p.Category}}</td>
            <td>{{p.productPrice}}</td>         
         
       <td><form action="${session.getContextPath()}/real-world/productdescription" method="post">
     <input type="hidden" name="pid" value={{p.id}}>
       <input type="hidden" name="name" value={{p.productName}}>
        <input type="hidden" name="color" value={{p.color}}>
        <input type="hidden" name="size" value={{p.size}}>
        <input type="hidden" name="price" value={{p.productPrice}}>
         <input type="hidden" name="brand" value={{p.brand}}>
            <input type="hidden" name="category" value={{p.Category}}>
        <input type="hidden" name="description" value={{p.description}}>
     <input type="submit" value="click">
</form>
     </td>
    </tr>   
         
        </tbody>
    </table>
</div>
</div>

<script>
angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.prod = ${products};
});
</script>
</body>
</html>

 