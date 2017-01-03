<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="AdminHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/background.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
<script>
<%@ include file="footer.jsp" %>




	  var prod = ${data};
	  angular.module('repeatSample', []).controller('AdminCategoryController', function($scope)
	   {
	                 $scope.catts=prod;
	   
	          $scope.sort = function(keyname)
	          {
	              $scope.sortKey = keyname;   //set the sortKey to the param passed
	              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
	          }
	              
	    });
	</script>
</head>
<body style="padding-top: 75px">

	<div class="container row">
		<div class="col-sm-3">
		</div>
		<div class="col-sm-6">
			
			<form:form action="addcategory" commandName="category">


				<table>
					<tr>
						<td><form:label class="btn btn-default btn-block" path="id">
								<spring:message text="Id" />
							</form:label></td>
						<c:choose>
							<c:when test="${!empty category.id}">
								<td><form:input class="form-control" path="id"
										readonly="true" /></td>
							</c:when>
							<c:otherwise>
								<td><form:input class="form-control" path="id"
										pattern=".{3,10}" required="true"
										title="id should contains 3 to 10 characters" /></td>
							</c:otherwise>
						</c:choose>
					<tr>
						<td><form:label class="btn btn-default btn-block" path="name">
								<spring:message text="Name" />
							</form:label></td>
						<td><form:input class="form-control" path="name"
								required="true" /></td>
					</tr>
					<tr>
						<td><form:label class="btn btn-default btn-block" path="description">
								<spring:message text="Description" />
							</form:label></td>
						<td><form:input class="form-control" path="description"
								required="true" /></td>
					</tr>
				</table>
				<br>
				<c:if test="${!empty category.name}">
					<input class="btn btn-block btn-primary" type="submit"
						value="Edit category" />
				</c:if>
				<c:if test="${empty category.name}">
					<input class="btn btn-block btn-primary" type="submit"
						value="Add category" />
				</c:if>
			</form:form>
		</div>
		<div class="col-sm-3"></div>
	</div>
	<!--  -->
	
					
					<div ng-app="repeatSample" ng-controller="AdminCategoryController">
					<br>
				<table class="table table-bordered table-hover ">
					<thead>
						<tr >
							<th>Category ID</th>
							<th>Category Name</th>
							<th>Category Description</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						
							<tr class="success" ng-repeat="category in catts|filter:sB">
	<td >{{category.id}}</td>
							<td>{{category.name}}</td>
							<td>{{category.description}}</td>
							<td><a class="btn btn-info btn-xs"
								href="editcategory/{{category.id}}">Edit</a></td>
							<td><a class="btn btn-danger btn-xs"
								href="removecategory/{{category.id}}">Delete</a></td>
						</tr>
					</tbody>
				</table>
	                
	
				
			</div>
		
</body>
</html>