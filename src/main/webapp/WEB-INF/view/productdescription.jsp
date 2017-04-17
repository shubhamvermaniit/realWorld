<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<br><br>
<br><br>
<% 
String nm=application.getContextPath();
System.out.println(nm);
String addr=nm+"/order";
System.out.println(addr);
%>
 <div class="item">
        <img src="<c:url value='resources/images/download.jpg'/>" alt="HTC" width="460" height="345">
      </div>
    


<div class="container" id="product-section">


  <div class="row">
   <div class="col-md-5">
    <img src="resources/images/download.jpg" height="300" width="300" border="1"/>
  
   </div>
   <div class="col-md-7">
   <div class="row">
   <div class="col-md-12">
   <h1>${product.productName}</h1>
   </div>
   </div>
   
   
   <div class="row">
 <div class="col-md-12">
  <span class="label label-primary">Color</span>
  <span class="monospaced">${product.color}</span>
 </div>
</div>
  <div class="row">

</div>


<div class="row">
 <div class="col-md-3">
  <span class="sr-only">Four out of Five Stars</span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
  <span class="label label-success">55</span>
 </div>
 <div class="col-md-3">
  <span class="monospaced">Write a Review</span>
 </div>
</div>
   
<div class="row">
 <div class="col-md-12 bottom-rule">
  <h2 class="product-price">${product.productPrice}</h2>
 </div>
</div>

<div class="row add-to-cart">
 <div class="col-md-3 product-qty">
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  </span>
 
 </div>

 <div class="col-md-9">
  <!-- <button class="btn btn-lg btn-brand btn-full-width">
   Add to Cart
  </button>
  -->   <a href="${request.getContextPath()}/real-world/${product.id}" role="button" name="_eventId_submit" 
  class="btn btn-lg btn-primary btn-full-width">add to cart
   <span class="glyphicon glyphicon-cart-in"></span>
  </a>
  
  </div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-4 text-center">
  <span class="monospaced">In Stock</span>
 </div>
 <div class="col-md-4 col-md-offset-1 text-center">
  <a class="monospaced" href="#">Add to Shopping List</a>
 </div>
</div><!-- end row -->
<div class="row">
 <div class="col-md-12 bottom-rule top-10"></div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-12 top-10">
  <p>To order by telephone, <a href="tel:18005551212">please call 1-800-555-1212</a></p>
 </div>
</div>

</div>
</div>
</div>



<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>