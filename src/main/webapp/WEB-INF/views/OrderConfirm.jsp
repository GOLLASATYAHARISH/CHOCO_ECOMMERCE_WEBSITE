<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<%@include file="h&f.jsp"%>




<div>
<table class="table table-bordered table-hover table-striped">	

<tr>
			<th>Ammount Payable</th>
				<th>User name</th>
				<th>Mobile</th>
				<th>Email</th>
<th>Shipping Adress</th>
				
			</tr>
<c:forEach var="ad" items="${UserInfo}">
		

		
			
			
			<tr>
<td>${cartTot}</td>
				<td>${ad.userName}</td>
				
				<td>${ad.mobile}</td>
				<td>${ad.email}</td>
<td>${ad.name}</td>

				

				



			</tr>
</c:forEach>			
		
		
		</table>
		
		


</div>

<div>
<table class="table table-bordered table-hover table-striped">	

<tr>
		
		<h4><th><a href="Product">Cancel Order</a></th></h4>
		<h4><th><a href="payment">Payment</a></th></h4>
		</tr>	
			
		</table>
</div>



<%@include file="CommonFooter.jsp"%>