<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style> 
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>


</head>
<body >


	<jsp:include page="h&f.jsp"></jsp:include>
	<div class="col-md-2">
	
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="Login">LOGIN</a>
  <a href="register">SignUP</a>
  <a href="profile">SETTINGS</a>
  <a href="orders">ORDERS</a>
</div>

<h2>DETAILS</h2>

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0px";
}
</script>
	
	</div>
	   
	<div class="col-md-10">
	<div class="container-fluid">
		 <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner" role="listbox" style="width:100%; height:100%" >
        <div class="item active">
          <img class="first-slide" src=".\resources\images\corousel\cake.jpg" alt="First slide" style="width:100%; height:300px">
          <div class="container">
            <div class="carousel-caption">
              <h1>Special cakes</h1>
              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src=".\resources\images\corousel\o2.jpg" alt="Second slide" style="width:100%; height:300px">
          <div class="container">
            <div class="carousel-caption">
              <h1>omelets</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src=".\resources\images\corousel\f7.jpg" alt="Third slide" style="width:100%; height:300px">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src=".\resources\images\corousel\m1.jpg" alt="forth slide" style="width:100%; height:300px">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
		</div>	
<!-- 		<div id="myCarousel" class="carousel slide" data-ride="carousel" >
			Indicators
			<ol class="carousel-indicators" >
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			Wrapper for slides
			<div class="carousel-inner" role="listbox">

				<div class="item active">

					<img src=".\resources\caurosel\cake.jpg" alt="Chania" width="1400"
						height="200">

					<div class="carousel-caption" color="blue">
						<h3>egg cakes</h3>
						<p>The most delicious item in our products</p>
					</div>
				</div>

				<div class="item">

					<img src=".\resources\caurosel\f7.jpg" alt="Chania" width="1400"
						height="200">

					<div class="carousel-caption" >
						<h3 color="grey">fries</h3>
						<p>Delicious fires</p>
					</div>
				</div>

				<div class="item">

					<img src=".\resources\caurosel\o2.jpg" alt="Flower" width="1400"
						height="200">

					<div class="carousel-caption">
						<h3 color="light brown">omlet</h3>
						<p>spicy omlets guruuuuuu....</p>
					</div>
				</div>

				<div class="item">

					<img src=".\resources\caurosel\m1.jpg" alt="Flower" width="1400"
						height="200">

					<div class="carousel-caption">
						<h3 color="black">buscuits</h3>
						<p>Taste buscuits darlings</p>
					</div>
				</div>

			</div>

			Left and right controls
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div> -->
	</div>

	<div class="jumbotron text-center" style="background-color:#fff5ff;" > 
	<marquee style="bg-color:#008f8f"><h2>WELCOME TO CHOCO WORLD </h2></marquee>
	 </div>  
	 <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="./resources/r.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>RETAILERS</h2>
          <p>Bulk amount of order can be given in advance for parties and functions to have bults benifits and discounts</p>
          <p><a class="btn btn-default" href="Userpro" role="button">View PRODUCTS &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="./resources/cake1.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>HUGE CAKES</h2>
          <p>BIRTHday cakes,NewYEar cakes and all celebration cakes of huge sizes with well deigned flavours .ALL order in Advance.LATE NIGHT delivers</p>
          <p><a class="btn btn-default" href="cakes" role="button">View PRODUCTS &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="./resources/logogif.gif" alt="Generic placeholder image" width="140" height="140">
          <h2>All PRODUCTS</h2>
          <p>BUY all the Products LIke omlets, burgies ,fries, with many flavour  Products from CHOCO are most special Items in my WEBsite</p>
          <p><a class="btn btn-default" href="Userpro" role="button">View PRODUCTS &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>












<%-- 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>about us</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
     
   <body>
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
        <center><img src=".\resources\caurosel\cake.jpg" alt="apple" width="960" height="445"></center>
      </div>

      <div class="item">
        <center><img src=".\resources\caurosel\o2.jpg" alt="fastrack" width="960" height="445"></center>
      </div>
    
      <div class="item">
       <center><img src=".\resources\caurosel\m1.jpg" alt="Rolex" width="960" height="445"></center>
        </div>

      <div class="item">
        <center><img src=".\resources\caurosel\cake.jpg" alt="fossil" width="960" height="445"></center>
        
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
</body>
<br>
<br>
<br>
<br>
</html> --%>


























<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> ChipKart</title>
</head>
<body style="background-color:white;">
<jsp:include page="CommonHeader.jsp"/>

<div class="container"  >

  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" align="center">
      <div class="item active">
        <img src="resources/images/corousel/cake.jpg"  >
      </div>
    
      <div class="item">
        <img src="resources/images/corousel/f7.jpg"  >
      </div>
      
       <div class="item">
        <img src="resources/images/corousel/m1.jpg" >
      </div>

      <div class="item">
        <img src="resources/images/corousel/o2.jpg" >
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left xcarousel-control" href="#myCarousel" role="button" data-slide="prev">
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
<h5 align="left">PRODUCTS</h5>
  
 
  <div class="row">
    <div class="col-sm-4">
      <a href="Product" class="thumbnail">
        <p>cakes</p>
        <img src="resources/cake1.jpg" alt="Pulpit Rock" style="width:230px;height:215px">
      </a>
    </div>
    <div class="col-sm-4">
      <a href="Product" class="thumbnail">
        <p>
omlets
</p>
        <img src="resources/01.jpg" alt="Moustiers Sainte Marie" style="width:230px;height:215px">
      </a>
    </div>
    <div class="col-sm-4">
      <a href="Product" class="thumbnail">
        <p>
        fries
       </p>
        <img src="resources/f6.JPG" alt="Cinque Terre" style="width:230px;height:215px">
      </a>
    </div>
  </div>
</div>



<br/><br/>
<jsp:include page="footer.jsp"></jsp:include>




</body>
</html> --%>