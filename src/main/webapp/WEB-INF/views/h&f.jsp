<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body style="background-color:#cccccc;">
<div class="row">
    <div class="container-fluid" style="background-color:#008f8f;color:black;">
			<div class="col-md-2">
			   <div class="text-center image-align-center">
				<div style="background-image:.\resources\caurosel\cake.jpg"> 
					<img 
						src="C:\Users\harishchoco\Downloads\choco\logsgif.gif" class="img-circle" alt="Cinque Terre" width="128" height="128">
						 <h3 style="color:#fff5cc; text-align-center;">CHOCO 4 U</h3> 
				</div>
			  </div>
			</div><div>
				<div class="col-md-10">
				<div class="jumbotron text-center" style="background-color:#fff5cc;">
					<h3>HEALTH IS WEALTH</h3>
					<h4>ALL PRODUCTS WITH BEST VARITY OF OILS</h4>
					<h6>We cook for your good health and your taste</h6>
					   Welcome   <c:out value="${UserName}"/>
                    </div>
			</div></div>
</div></div>
<div>
<div>
	<nav class="navbar navbar-inverse fix-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="about">CHOCO</a>
		</div>
		<ul class="nav navbar-nav navbar-left">
			<li><a href="index1">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="Product">products <span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="cakes"><i class="material-icons" style="font-size:24px;color:red">cake</i>cakes</a></li>
					<li><a href="omlet" >omlets</a></li>
					<li><a href="fries">fries</a></li>
					<li><a href="muffins">muffins</a></li>
				</ul></li>
			<li><a href="about">about</a></li>
			<li><a href="ContactUs">contact us</a></li>
			
			
		</ul>             
		<!-- <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form> -->
    
    <ul class="nav navbar-nav navbar-right">

        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">DETAILS<span class="caret"></span></a>
          <ul class="dropdown-menu">
          <c:if test="${log}">   
        <li><a href="about"><span class="glyphicon glyphicon-user"></span>PROFILE </a></li>
        <li><a href="Cart"><span class="glyphicon glyphicon-shopping-cart"></span>CART</a></li>
        <li><a href="logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
		<li><a href="Admin"><span class="glyphicon glyphicon-cog"></span> settings</a></li>
		 </c:if >
		
		 <c:if test="${not log}">
        <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="Login"><span class="glyphicon glyphicon-user"></span> login</a></li>
        </c:if>
          
          </ul>
        </li>

      </ul>
   
    <%-- 
		<ul class="nav navbar-nav navbar-right">
		
		<li><a href="register"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		
		
		 <c:if test="${empty RegisterModel}">
			    <li><a href="Admin"><span class="glyphicon glyphicon-user"></span>Admin</a></li>
				<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</c:if>
		<c:if test="${not empty RegisterModel}">
		        
		  <li><a href="result" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-shopping-cart"></span> My Items</a></li>
           <li><a href="index" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
           </c:if>
           
             <button> <i class="fa fa-cart-arrow-down" style="font-size:36px;color:red"></i></button>
        </ul>
	 --%>
	 </div>
	</nav>
</div>
</div>	
</body>
</html>