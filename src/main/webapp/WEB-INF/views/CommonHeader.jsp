<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Choco</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">		

</head>
<body>
<div>
<img align="left" src="resources/logsgif.gif" width="150" height="100"/>   <h5>Welcome  <c:out value="${UserName}"/></h5>
<!--  
<%
    Integer hitsCount =(Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 )
    {
       /* First visit */
      // out.println("Welcome to lootle.com!");
       hitsCount = 1;
    }
    else
    {
       /* return visit */
       //out.println("Welcome to lootle.com!");
       hitsCount += 1;
    }
    out.print("HIt Count  = "+hitsCount);
    application.setAttribute("hitCounter", hitsCount);
%>

-->
</div>
  <div class="container">
  <div>
  
  
</div>
<div class="row" align="right">
   Items ${cartcnt} <a href="ShowCart"><img src="http://www.animatedimages.org/data/media/1633/animated-shopping-cart-image-0003.gif" border="0" alt="animated-shopping-cart-image-0003" height="50" width="50"/>  </a>
 
  
<a class="fa fa-facebook-square"style="font-size:25px;color:blue"  href="https://www.facebook.com" target="_blank"></a>
<a href="https://twitter.com/" style="font-size:25px;color:red"  class="fa fa-twitter" target="_blank"></a> 
<a href="https://www.google.com/"  style="font-size:25px;color:yellow" class="fa fa-google-plus-square" target="_blank"></a>

</div>
</div>	
 
<div class="row" align="left" style="background-color:rgb(128,128,128)">
		
		<div>
		 
		
</div>
  </div>
  

			
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
 
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="Product">All</a></li>
          <li><a href="Product">cakes</a></li>
          <li><a href="Product">omlets</a></li>
          <li><a href="Product">fries</a></li>
          <li><a href="Product">chocolates</a></li>
        </ul>
      </li>
      <li class="active"><a href="about">AboutUs</a></li>
      <li class="active"><a href="ContactUs">Contact Us</a></li>
       <li class="active"><a href="register">Register</a></li>
      <li class="active"><a href="Login">Login</a></li>
      <li class="active"><a href="perform_logout">LogOut</a></li>
    </ul>
  </div>
</nav>
  
</body>
</html>