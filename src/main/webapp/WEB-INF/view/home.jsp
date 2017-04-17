<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/view/template/header.jsp" %>
<html>
  <head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Digital-House</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    
    <!-- CSS -->
    <link rel="stylesheet" href="/resources/css/owl.carousel.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/ionicons.min.css">
    <link rel="stylesheet" href="/resources/css/animate.css">
    <link rel="stylesheet" href="/WEB-INF/resource/css/responsive.css">
    
    <!-- Js -->
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/min/waypoints.min.js"></script>
    <script src="js/jquery.counterup.js"></script>

    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="js/google-map-init.js"></script>



<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>

  </head>
  <body>
<security:authorize access="hasRole('ROLE_ADMIN')">
<jsp:forward page="/adminHome"></jsp:forward>

</security:authorize>


  
        
    <!-- Slider Start -->
    
 <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/iphone-thin.jpg" alt="Iphone" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/images/download.jpg" alt="HTC" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="resources/images/Intex-Aqua-M5-Photo-2.jpg" alt="Intex" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/images/hqdefault.jpg" alt="Samsung" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    
    
    
    
    
    
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-2">
            <div class="block">
              <h1 class="animated fadeInUp">A DIGITAL MARKETING &#38; <br> DESIGN AGENCY</h1>
              <p class="animated fadeInUp">We love the Web and the work we do.We work closely with our </br> clients to deliver the best possible solutions for their needs</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Wrapper Start -->
    <section id="intro">
      <div class="container">
        <div class="row">
          <div class="col-md-7 col-sm-12">
            <div class="block">
              <div class="section-title">
                <h2>About Us</h2>
                <p>Social media and emerging mobile technologies have forever changed the landscape of human interaction. No longer will people wait hours, let alone days, for a response from clients or customers. </p>
              </div>
              <p>We now live in a world in which news is broken in under 140 characters and people are more driven by bouncing icons on their mobile phones than what can be experienced outside of their 3.5” screen. </p>
            </div>
          </div><!-- .col-md-7 close -->
          <div class="col-md-5 col-sm-12">
            <div class="block">
              <img src="resources/images/homepagevideo.jpg" alt="Digital">
            </div>
          </div><!-- .col-md-5 close -->
        </div>
      </div>
    </section>

  <section id="feature">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-6">
          <h2>WE BELIEVE IN GREAT IDEAS</h2>
          <p>At AgencyDigi, we believe that the heart of any communication is an idea - An idea which would live and revel in a digital world.</p>
          <p>A team of planners, writers, artists and technologists work towards delivering on your brief through an idea which can deliver results in a digital world.</p>
          <p>At AgencyDigi, we believe there is nothing called digital strategy, but only strategy for a world which has gone digital.
We align business and brand objectives with consumer insights to deliver solutions which would resonate with consumers who live in a digital world.</p>
         
        </div>
      </div>
    </div>
  </section>
        
   
            
    
    </body>
</html>