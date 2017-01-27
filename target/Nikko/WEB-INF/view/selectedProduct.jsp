<!DOCTYPE html>
<html lang="en">
<head>
<title>View Product</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <%--For getting images start--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--For getting images ends--%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
<form:form method="POST" action="${cp}/productlist/viewproduct/{product_id}" modelAttribute="product">
	<p></p>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<h2>Product Detail</h2>
		<p>Here is the detail information of the product.</p>

		
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
			</div class="col-md-5">
			<h3>${product.product_name}</h3>
			<strong>Price</strong>:Rs ${product.product_price}0
			</p>
		</div>

	</div>
	</form:form>
</body>
</html>

