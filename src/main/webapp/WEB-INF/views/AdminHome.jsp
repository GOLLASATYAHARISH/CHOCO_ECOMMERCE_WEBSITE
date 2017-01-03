<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cheap Chips</title>
</head>
<body style="background-color:pink;">
<jsp:include page="/WEB-INF/views/AdminHeader.jsp"/>



	<core:choose>
		<core:when test="${LoggedIn}">

			<core:choose>
				<core:when test="${Administrator}">
     Welcome <core:out value="{UserName}" />
				</core:when>
				<core:otherwise>
					<core:import url="Login.jsp" />
				</core:otherwise>
			</core:choose>
		</core:when>
		<core:otherwise>
			<core:import url="Login.jsp" />
		</core:otherwise>

	</core:choose>

	<div class="container"  >

  <div id="myCarousel" class="carousel slide" data-ride="carousel" >
  <br>
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    


<br/><br/>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>




</body>
</html>