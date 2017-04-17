<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">	
<%@taglib uri="http://www.springframework.org/security/tags"  prefix="security"%>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Space template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/WEB-INF/resource/css/bootstrap.min.css"> 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome in Real-world</title>
  <link rel="stylesheet" href="resource/css/owl.carousel.css">
    <link rel="stylesheet" href="resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="resource/css/font-awesome.min.css">
    <link rel="stylesheet" href="resource/css/style.css">
    <link rel="stylesheet" href="resource/css/ionicons.min.css">
    <link rel="stylesheet" href="resource/css/animate.css">
    <link rel="stylesheet" href="resource/css/responsive.css">
    <script type="text/javascript">
    function formsubmit()
    {
    document.getElementById("logout").submit();
    }
    </script>
</head>
<body>
  
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- header Nav Start -->
          <nav class="navbar navbar-default">
            <div class="container-fluid">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">
                  <img src="resource/images/logo.png" alt="Logo">
                </a>
              </div>
              <c:url value="/logout" var="logout" />
              <form action="${logout}" method="post" id="logout">
              <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
              
              </form>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                  <li><a href="home">Home</a></li>
                    <li><a href="contact">Cotact</a></li>
                    <li><a href="work">Work</a></li>
                  <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
        PRODUCTS
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="${pageContext.request.contextPath}/user/add1/i-phone">I-phone</a></li>
          <li><a href="${pageContext.request.contextPath}/user/add1/samsung">Samsung</a></li>
          <li><a href="${pageContext.request.contextPath}/user/add1t/htc">HTC-World</a></li> 
          <li><a href="${pageContext.request.contextPath}/user/add1/intex">Intex</a></li> 
          
        </ul>
      </li>	
      <security:authorize access="hasRole('ROLE_ADMIN')"><li><a href="${pageContext.request.contextPath}/admin/adminP"><span
							class="glyphicon glyphicon-user"></span> Admin</a></li></security:authorize>
							
							<security:authorize access="hasRole('ROLE_USER')"><li><a href="${pageContext.request.contextPath}/home"><span
							class="glyphicon glyphicon-user"></span>User</a></li></security:authorize>
							
		<security:authorize access="hasRole('ROLE_USER')"><li><a href="${pageContext.request.contextPath}/user/myCart"><span
							class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li></security:authorize>
											
      
      <security:authorize access="isAnonymous()"> <li><a href="${pageContext.request.contextPath}/login"><span
							class="glyphicon glyphicon-user"></span> Sign In</a></li>
     				 <li><a href="${pageContext.request.contextPath}/Register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
  </security:authorize>
  <security:authorize access="isAuthenticated()">
  
   <li><a href="javascript:formsubmit()"><span class="glyphion glyphion-log-out"></span>Logout</a></li>
  </security:authorize>	     
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
            </nav>
          </div>
        </div>
      </div>
   
     
 </body>
</html>