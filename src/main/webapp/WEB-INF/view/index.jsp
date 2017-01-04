<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<jsp:include page="jsfiles.jsp"></jsp:include>
		<jsp:include page="cssfiles.jsp"></jsp:include>
		<jsp:include page="Signupandlogin.jsp"></jsp:include>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
<!--
for modal image slideshow
 <style>body {
	font: normal 0.9em Arial;
	margin: 0;
}

ul li {
	padding: 10px 0;
}

html, body {
	height: 10%;
	/* The html and body elements cannot have any padding or margin. */
}

/* Wrapper for page content to push down footer */
#wrap {
	min-height: 10%;
	height: auto;
	/* Negative indent footer by its height */
	margin: 0 auto -60px;
	/* Pad bottom by footer height */
	padding: 0 0 60px;
}

/* Set the fixed height of the footer here */
#footer {
	height: 60px;
	background-color: transparent !important;
	box-shadow: 5px 4px 5px #000;
}

.carousel.fade {
	opacity: 1;
}

.carousel.fade .item {
	height: 500px;
	width: 90%;
	transition: opacity ease-out .7s;
	margin-left: 50px;
	opacity: 0; /* hide all slides */
	top: 0;
	position: absolute;
	display: block;
}

.carousel.fade .item>img {
	width: 100%;
}

.carousel.fade .item:first-child {
	top: auto;
	opacity: 1; /* show first slide */
	position: relative;
}

.carousel.fade .item.active {
	opacity: 1;
}

body {
	margin-top: 50px;
	margin-bottom: 10px;
}

}

/* bootstrap dropdown hover menu*/
body {
	font-family: 'PT Sans', sans-serif;
	font-size: 13px;
	font-weight: 400;
	color: #4f5d6e;
	position: relative;
	background: rgb(26, 49, 95);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(26,
		49, 95, 1)), color-stop(10%, rgba(26, 49, 95, 1)),
		color-stop(24%, rgba(29, 108, 141, 1)),
		color-stop(37%, rgba(41, 136, 151, 1)),
		color-stop(77%, rgba(39, 45, 100, 1)),
		color-stop(90%, rgba(26, 49, 95, 1)),
		color-stop(100%, rgba(26, 49, 95, 1)));
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#1a315f',
		endColorstr='#1a315f', GradientType=0);
}

.body-wrap {
	min-height: 0px;
}

.body-wrap {
	position: relative;
	z-index: 0;
}

.body-wrap:before, .body-wrap:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: -1;
	height: 0px;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(26,
		49, 95, 1)), color-stop(0%, rgba(26, 49, 95, 0)));
	background: linear-gradient(to bottom, rgba(26, 49, 95, 1) 0%,
		rgba(26, 49, 95, 0));
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#1a315f',
		endColorstr='#001a315f', GradientType=0);
}

.body-wrap:after {
	top: auto;
	bottom: 0;
	background: linear-gradient(to bottom, rgba(26, 49, 95, 0) 0%,
		rgba(26, 49, 95, 1));
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#001a315f',
		endColorstr='#1a315f', GradientType=0);
}

nav {
	margin-top: 10px;
	box-shadow: 5px 4px 5px #000;
}

.navbar-default {
	background-color: transparent !important;
	background: rgba(0, 0, 0, 0.5);
	border-color: transparent;
	background-image: none;
	box-shadow: none;
}

.navbar-default .navbar-nav>li>a {
	font-size: 100px;
	color: #fff;
}

div {
	display: block;
}

<!--
navbar font pattern>.dropdown-menu.inverse a {
	background: #000;
	font-weight: 300;
	color: #ccc;
}

}
.navbar-nav>li>a {
	position: relative;
	z-index: 15;
}

.navbar-nav a {
	font-weight: 400;
	font-size: 15px;
}

.navbar-wrapper {
	position: relative;
	z-index: 15;
}

.navbar-wrapper .container-fluid {
	position: relative;
	top: 0px;
	left: 0;
}
</style>
</head>
<body BACKGROUND="<c:url value='/resources/images/pic.jpg'/>" />
	<div id="myCarousel" class="carousel fade" data-ride="carousel">
		<div class="body-wrap">
			<div class="container">

				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">

					<div class="item active">
						<img src="<c:url value="/resources/images/nik1.png" />">
					</div>

					<div class="item">
						<img src="<c:url value="/resources/images/nik2.png" />"
							alt="Chania" style="height: 100%;">
					</div>

					<div class="item">
						<img src="<c:url value="/resources/images/nik3.png" />"
							alt="Flower" style="height: 100%;">
					</div>
					<div class="item">
						<img src="<c:url value="/resources/images/nik4.jpg" />"
							alt="Flower" style="height: 100%;">
					</div>
					<div class="item">
						<img src="<c:url value="/resources/images/nik5.jpg" />"
							alt="Flower" style="height: 100%;">
					</div>
				</div>
			</div>
		</div>
	</div>
	<iframe></iframe>
</body>
</html>