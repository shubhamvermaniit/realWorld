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
    <title>Space template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    
    <!-- CSS -->
    <link rel="stylesheet" href="resource/css/owl.carousel.css">
    <link rel="stylesheet" href="resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="resource/css/font-awesome.min.css">
    <link rel="stylesheet" href="resource/css/style.css">
    <link rel="stylesheet" href="resource/css/ionicons.min.css">
    <link rel="stylesheet" href="resource/css/animate.css">
    <link rel="stylesheet" href="resource/css/responsive.css">
    
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
<jsp:forward page="/admin/adminP"></jsp:forward>

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
        <img src="resources/images/apparels.jpg" alt="Apparels" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/images/footwear.jpg" alt="Footwear" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="resources/images/accessories.jpg" alt="Accessories" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/images/cosmetics.jpg" alt="Cosmetics" width="460" height="345">
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
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics</p>
              </div>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id </p>
            </div>
          </div><!-- .col-md-7 close -->
          <div class="col-md-5 col-sm-12">
            <div class="block">
              <img src="#" alt="Img">
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
          <p>Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p>Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p>Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
         
        </div>
      </div>
    </div>
  </section>
        
    <!-- Service Start -->
    <section id="service">
      <div class="container">
        <div class="row">
          <div class="section-title">
            <h2>Our Mobile Services partner</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics</p>
          </div>
        </div>
        <div class="row ">
          <div class="col-sm-6 col-md-3">
            <div class="service-item">
              <i class="fa fa-apple"></i>
<i class="fa fa-apple" style="font-size:24px"></i>
<i class="fa fa-apple" style="font-size:36px"></i>
<i class="fa fa-apple" style="font-size:48px;color:red"></i>></i>
              <h4>I-phone</h4>
              <p>it is a i-phone store now if you want to sell first of all you should fill the form and then select the item </p>
			  <html>
			  <body>
			  <li><a href="button">button</a>
	
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="service-item">
              
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="service-item">
             
          <div class="col-sm-6 col-md-3">
            <div class="service-item">
             
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="service-item">
              <i class="ion-headphone"></i>

            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="service-item">
              <i class="ion-leaf"></i>
            
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="service-item">

            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="service-item">
              
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Call to action Start -->
    <section id="call-to-action">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="block">
              <h2>We design delightful digital experiences.</h2>
              <p>Read more about what we do and our philosophy of design. Judge for yourself The work and results we’ve achieved for other clients, and meet our highly experienced Team who just love to design.</p>
              
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Content Start -->
    <section id="testimonial">
      <div class="container">
        <div class="row">
          <div class="section-title text-center">
            <h2>Fun Facts About Us</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="block">
              <ul class="counter-box clearfix">
                <li>
                  
                </li>
                <li>
                 
                </li>
                <li>
                  
                </li>
                <li>
                  
                </li>

              </ul>
            </div>
          </div>
          <div class="col-md-6">
            <div class="testimonial-carousel">
              <div id="testimonial-slider" class="owl-carousel">
                <div>
                    <img src="img/cotation.png" alt="IMG">
                    <p>"This Company created an e-commerce site with the tools to make our business a success, with innovative ideas we feel that our site has unique elements that make us stand out from the crowd."</p>
                    <div class="user">
                      <img src="resource/img1.jpg" alt="Pepole">
                      <p><span>Rose Ray</span> CEO</p>
                    </div>
                </div>
                <div>
                  <img src="img/cotation.png" alt="IMG">
                    <p>"This Company created an e-commerce site with the tools to make our business a success, with innovative ideas we feel that our site has unique elements that make us stand out from the crowd."</p>
                    <div class="user">
                      <img src="resource/images/img1.jpg" alt="Pepole">
                      <p><span>Rose Ray</span> CEO</p>
                    </div>
                </div>
                <div>
                  <img src="resource/images/cotation.png" alt="IMG">
                    <p>"This Company created an e-commerce site with the tools to make our business a success, with innovative ideas we feel that our site has unique elements that make us stand out from the crowd."</p>
                    <div class="user">
                      <img src="resource/images/img1.jpg" alt="Pepole">
                      <p><span>Rose Ray</span> CEO</p>
                    </div>
                </div>
                <div>
                  <img src="img/cotation.png" alt="IMG">
                    <p>"This Company created an e-commerce site with the tools to make our business a success, with innovative ideas we feel that our site has unique elements that make us stand out from the crowd."</p>
                    <div class="user">
                      <img src="img/item-img1.jpg" alt="Pepole">
                      <p><span>Rose Ray</span> CEO</p>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>


            
    
    </body>
</html>