<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="jsfiles.jsp"></jsp:include>
<jsp:include page="cssfiles.jsp"></jsp:include>
<jsp:include page="fontfiles.jsp"></jsp:include>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
table {
	overflow: hidden;
}

td, th {
	padding: 10px;
	position: relative;
	outline: 0;
}

body:not (.nohover ) tbody tr:hover {
	background-color: #ffa;
}

td:hover::after, thead th:not (:empty ):hover::after, td:focus::after,
	thead th:not (:empty ):focus::after {
	content: '';
	height: 10000px;
	left: 0;
	position: absolute;
	top: -5000px;
	width: 100%;
	z-index: -1;
}

td:hover::after, th:hover::after {
	background-color: #ffa;
}

td:focus::after, th:focus::after {
	background-color: lightblue;
}

/* Focus stuff for mobile */
td:focus::before, tbody th:focus::before {
	background-color: lightblue;
	content: '';
	height: 100%;
	top: 0;
	left: -5000px;
	position: absolute;
	width: 10000px;
	z-index: -1;
}

<!--
footer
.footer {
	background-color: #414141;
	width: 100%;
	text-align: left;
	font-family: sans-serif;
	font-weight: bold;
	font-size: 16px;
	padding: 50px;
	margin-top: 50px;
}

.footer .footer-left, .footer .footer-center, .footer .footer-right {
	display: inline-block;
	vertical-align: top;
}

/* footer left*/
.footer .footer-left {
	width: 33%;
	padding-right: 15px;
}

.footer .about {
	line-height: 20px;
	color: #ffffff;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer .about span {
	display: block;
	color: #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer .icons {
	margin-top: 25px;
}

.footer .icons a {
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color: #33383b;
	border-radius: 2px;
	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;
	margin-right: 3px;
	margin-bottom: 5px;
}

/* footer center*/
.footer .footer-center {
	width: 30%;
}

.footer .footer-center i {
	background-color: #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer .footer-center i.fa-envelope {
	font-size: 17px;
	line-height: 38px;
}

.footer .footer-center p {
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin: 0;
}

.footer .footer-center p span {
	display: block;
	font-weight: normal;
	font-size: 14px;
	line-height: 2;
}

.footer .footer-center p a {
	color: #0099ff;
	text-decoration: none;
}

/* footer right*/
.footer .footer-right {
	width: 35%;
}

.footer h2 {
	color: #ffffff;
	font-size: 36px;
	font-weight: normal;
	margin: 0;
}

.footer h2 span {
	color: #0099ff;
}

.footer .menu {
	color: #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer .menu a {
	display: inline-block;
	line-height: 1.8;
	text-decoration: none;
	color: inherit;
}

.footer .menu a:hover {
	color: #0099ff;
}

.footer .name {
	color: #0099ff;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

@media ( max-width : 767px) {
	.footer {
		font-size: 14px;
	}
	.footer .footer-left, .footer .footer-center, .footer .footer-right {
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}
	.footer .footer-center i {
		margin-left: 0;
	}
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
	font: normal 0.9em Arial;
	margin: 0;
}

#bg-asset {
	position: fixed;
	background: url('https://www.stakeholdermap.com/ninja-slider/pg-bg.jpg');
	z-index: -1;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
}

a {
	color: #1155CC;
}

h2 {
	margin-top: 60px;
}

header {
	display: block;
	padding: 40px 0 30px;
	text-align: center;
	background: #000;
}

header a {
	font-family: sans-serif;
	font-size: 10px;
	line-height: 24px;
	padding: 8px 13px 7px;
	color: #4d5256;
	text-decoration: none;
	transition: color 0.7s;
}

header a.active {
	font-weight: bold;
	width: 0 auto;
	height: 0 auto;
	padding: 4px;
	text-align: center;
	display: inline-block;
	border-radius: 50%;
	background: #4d5256;
	color: #191919;
}
.show-on-hover:hover>ul.dropdown-menu {
	display: block;
	
}
</style>
</head>
<body>
	<header> <a href="${cp}/test3">HOME</a> <a class="active" href="${cp}/test">GALLERIA</a>
	<a  href="${cp}/mcart">PRODUCTS</a> <a
		href="${cp}/service">SERVICE AND SUPPORT</a> <a href="${cp}/contact">ABOUT
		US</a> <c:if test="${loggedInUserID == null}">
	<a href="${cp}/checkuser">SIGNUP AND LOGIN</a>
	</c:if><c:if test="${loggedInUserID != null}">
			<div class="container">
				<div class="row">
					<div class="btn-group show-on-hover">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown">
							${loggedInUserID} <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${cp}/outuser">Log Out</a></li>

						</ul>

					</div>
				</div>
			</div>
		</c:if> </header>
	<!--start-->
	<div id="bg-asset"></div>
	<div id="ninja-slider">
		<div class="slider-inner">
			<ul>
				<li><a href="/"><img
						src="<c:url value="/resources/images/a.jpg" />"></a>
					<div class="caption cap1">RESOLUTION</div>
					<div class="caption cap1 cap2">THAT WILL BLOW YOUR MIND</div></li>

				<li><a href="/"><img
						src="<c:url value="/resources/images/b.jpg" />"></a>
					<div class="caption cap1">RESOLUTION</div>
					<div class="caption cap1 cap2">THAT WILL STRIKE YOUR HEART</div></li>
				<li><a href="/"><img
						src="<c:url value="/resources/images/c.jpg" />"></a>
					<div class="caption cap1">RESOLUTION</div>
					<div class="caption cap1 cap2">THAT WILL STEAL YOUR EYE</div></li>
				<li><a href="/"><img
						src="<c:url value="/resources/images/d.jpg" />"></a>
					<div class="caption cap1">RESOLUTION</div>
					<div class="caption cap1 cap2">TO DIE FOR!</div></li>
			</ul>
			<div class="fs-icon" title="Expand/Close"></div>
		</div>
	</div>

</body>
</html>