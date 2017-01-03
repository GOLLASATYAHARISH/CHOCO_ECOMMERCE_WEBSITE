<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>contact us</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="h&f.jsp" />

	<div class="container">

			<!-- Container (Contact Section) -->
			<div class="container-fluid bg-grey">
				<h2 class="text-center">CONTACT</h2>
				<div class="row">
					<div class="col-sm-5">
						<p>Contact us and we'll get back to you within 24 hours.</p>
						<p>
							<span class="glyphicon glyphicon-map-marker"></span> Polavaram, INDIA
						</p>
						<p>
							<span class="glyphicon glyphicon-phone"></span> +91 811 251 600
						</p>
						<p>
							<span class="glyphicon glyphicon-envelope"></span>
							gsatyaharish@gmail.com
						</p>
					</div>
					<div class="col-sm-7">
						<div class="row">
							<div class="col-sm-6 form-group">
								<input class="form-control" id="name" name="name"
									placeholder="Name" type="text" required>
							</div>
							<div class="col-sm-6 form-group">
								<input class="form-control" id="email" name="email"
									placeholder="Email" type="email" required>
							</div>
						</div>
						<textarea class="form-control" id="comments" name="comments"
							placeholder="Comment" rows="5"></textarea>
						<br>
						<div class="row">
							<div class="col-sm-12 form-group">
								<a href="#" class="btn btn-default btn-lg">
                                    <span class="glyphicon glyphicon-send"></span> Send </a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="jumbotron img-center">
					<h4>polavaram</h4>
					
						<img src="C:\Users\harishchoco\Downloads\choco\b.jpg"
							class="img-circle" alt="Cinque Terre" width=100 height=140>
				
					contact no:9441043464
				</div>
			</div>

			<div class="col-md-4">
				<div class="jumbotron img-center">
					<h4>bangalore</h4>
					
						<img src="C:\Users\harishchoco\Downloads\choco\a.jpg"
							class="img-circle" alt="Cinque Terre" width=100 height=140>
					contact no:8688883353
				</div>
			</div>
			<div class="col-md-4">

				<div class="jumbotron img-center">
					<h4>hyderabad</h4>
			
						<img src="C:\Users\harishchoco\Downloads\choco\o1.jpg"
							class="img-circle" alt="Cinque Terre" width=100 height=140>
	
					contact no:8919415356
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>





















<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="h&f.jsp"></jsp:include>
<div align="center">
<img  src="resources/eleventh.jpg" width="500" height="200"/>
</div>

<table style="width:100%">
  <tr>
   <th/>
   <th>Contact US</th>
  </tr>
  <tr>
    <th/>
    <th/> <div class="contentdiv">
<p>It will be our pleasure to receive any query from you because we value our customers. Kindly contact us at:</p>

<p><strong>Address</strong>  -  #1183, 22nd A Cross,<br />
                    30th Main, Near KIMS College Signal,<br />
                    Banashankari 2nd Stage,<br />
                    Bangalore - 560070<br />
<strong>Email</strong>      -  <a href="mailto:support@sangeethamobiles.com">support@sangeethamobiles.com</a><br />
<strong>Phone</strong>     -   +91 9019191947<br />
                    080-49397000,<br />
                    080-49397111,<br />
                    08431112345</p><th/>
    <th/>

  </tr>
  <tr>
    <td><img src="resources/help.png"/></td>
   
  </tr>
 
</table>


<br/><br/>
<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html> --%>