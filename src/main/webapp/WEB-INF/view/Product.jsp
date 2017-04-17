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
    <caption>{{prod.brandid}}</caption>
    <thead style="color:#CD5C5C">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Color</th>
        <th>brandId</th>
        <th>Price</th>
        <th>More</th>
    </tr>
    </thead>
    <tbody>
    
        <tr ng-repeat="p in prod|filter:searchText">
            <td>{{p.id}} </td>
            <td>{{p.productName}}</td>
            <td>{{p.brandid}}</td>
            <td>{{p.color}}</td>
            <td>{{p.productPrice}}</td> 
            <td>{{p.productQty}}</td> 
                   
    <td><a href="<c:url value='more/{{p.id}}'/>">More</a></td>
  
    </tr>   
         
        </tbody>
    </table>
</div>
</div>

<script>
angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.prod = ${product};
});
</script>
</body>
</html>

 