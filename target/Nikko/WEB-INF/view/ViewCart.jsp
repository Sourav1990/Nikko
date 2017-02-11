<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="jsfiles.jsp"></jsp:include>
		<jsp:include page="cssfiles.jsp"></jsp:include>
		<jsp:include page="fontfiles.jsp"></jsp:include>
<style>
.show-on-hover:hover>ul.dropdown-menu {
	display: block;
	
}
body {
  margin: 0;
  padding: 0;
  height: 100vh;
  /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#ffffff+0,ffffff+50,f4f4f4+51,d8d8d8+100 */
  background: white;
  /* Old browsers */
  background: -moz-linear-gradient(top, white 0%, white 50%, #f4f4f4 51%, #d8d8d8 100%);
  /* FF3.6+ */
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, white), color-stop(50%, white), color-stop(51%, #f4f4f4), color-stop(100%, #d8d8d8));
}

.p_slider {
  width: 200px;
  height: 339px;
}
.p_slider .left,
.p_slider .right {
  cursor: pointer;
  position: absolute;
  z-index: 10;
}
.p_slider__item {
	position:absolute;
  width: 200px;
  height: 200px;
  cursor: pointer;
  -webkit-transition-duration: 1.5s;
          transition-duration: 1.5s;
  transition-property: transform, left, opacity, -webkit-filter;
}
.p_slider__item img {
  width: 200px;
  -webkit-transform: scale(0);
          transform: scale(0);
  position: relative;
  -webkit-animation: scale_bounce 1.2s .4s forwards;
          animation: scale_bounce 1.2s .4s forwards;
  -webkit-box-reflect: below 4px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(50%, transparent), to(rgba(255, 255, 255, 0.2)));
}
.p_slider__item:nth-of-type(1) {
  -webkit-transform: scale(0.6);
          transform: scale(0.6);
  left: -200px;
  -webkit-filter: blur(2px);
  opacity: 0.8;
  z-index: 1;
}
.p_slider__item:nth-of-type(2) {
  -webkit-transform: scale(1);
          transform: scale(1);
  left: 0px;
  z-index: 2;
}
.p_slider__item:nth-of-type(3) {
  -webkit-transform: scale(0.6);
          transform: scale(0.6);
  left: 200px;
  z-index: 1;
  -webkit-filter: blur(2px);
  opacity: 0.8;
}

@-webkit-keyframes scale_bounce {
  0% {
    -webkit-transform: scale(0);
            transform: scale(0);
  }
  20% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  40% {
    -webkit-transform: scale(0.98);
            transform: scale(0.98);
  }
  60% {
    -webkit-transform: scale(1.012);
            transform: scale(1.012);
  }
  80% {
    -webkit-transform: scale(0.995);
            transform: scale(0.995);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}

@keyframes scale_bounce {
  0% {
    -webkit-transform: scale(0);
            transform: scale(0);
  }
  20% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  40% {
    -webkit-transform: scale(0.98);
            transform: scale(0.98);
  }
  60% {
    -webkit-transform: scale(1.012);
            transform: scale(1.012);
  }
  80% {
    -webkit-transform: scale(0.995);
            transform: scale(0.995);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}
/* Some custom styles to beautify this example */
    .demo-content{
       padding: 200px;
        font-size: 18px;
        min-height: 300px;
        background: #dbdfe5;
        margin-bottom: 10px;
    }
    .demo-content.bg-alt{
        background: #abb1b8;
    }
    /* Some custom media query to make 
       this example even better */
    @media screen and (max-width: 991px){
        .flexible{
            min-height: 150px;
        }
    }
<!-- for layout of product details


/*****************globals*************/
img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }
header1 {display:block;padding:40px 0 30px;text-align:center;background:#000;}
        header1 a {
            font-family: sans-serif;
            font-size:10px;
            line-height: 24px;
            padding: 8px 13px 7px;
            color: #4d5256;
            text-decoration:none;
            transition: color 0.7s;
        }
        header1 a.active {
            font-weight:bold;
            width: 0 auto;
            height: 0 auto;
            padding: 4px;
            text-align: center;
            display:inline-block;
            border-radius: 50%;
            background: #4d5256;
            color: #191919;
        }
       input[type=text]{
  width:200px;
  padding:8px 10px;
}

li em {
  background:#ff6;
  font-weight:bold;
  font-style:normal;
}

@import url(http://fonts.googleapis.com/css?family=Exo:100);
* {margin: 0; padding: 0; border: 0 none;}
html, body {height: 100%; width: 100%; font-size: 1rem; font-family: 'Exo', sans-serif; font-weight: 100;}
.cont-slider {
    position: relative;
    height: 100vh;
    max-height: 100vh;
    width: auto;
    min-width: 100vw;
    margin: 0 auto;
    overflow: hidden;
}
.slider {
    animation: sliding 25s ease-out 0s backwards infinite;
    position: absolute;
    left: 0;
    top: 0;
    width: 500%;
    height: 100%;
}
.slide {
    display: inline-block;
    position: relative;
    width: 20%;
    height: 100%;    
    background-attachment: fixed;
    background-position: center center;
    background-size: cover;
}
.slide span {
    background: rgba(0, 0, 0, 0.3);
    border-radius: 0 5vh 5vh 0;
    color: #FFF;
    position: absolute;
    left: 0;
    top: 40vh;
    font-size: 20vh;
    line-height: 20vh;
    border: 1px solid rgba(255,255,255,.45);
    border-left: 0 none;
}
.one {
  background-image: url(http://farm9.staticflickr.com/6183/6025120829_4d582707f7_z.jpg);}
.two {
  background-image: url(http://farm9.staticflickr.com/8064/8179351735_c8c069dc61_z.jpg);}
.three {
  background-image: url(http://farm9.staticflickr.com/8061/8188068610_70eda46a1f_z.jpg);}
.four {
  background-image: url(http://farm9.staticflickr.com/242/535485602_9328a91e65_z.jpg);}
.five {
  background-image: url(http://farm9.staticflickr.com/8488/8175350378_a97be42263_z.jpg);}

@keyframes sliding {
  0% {left: 0%; }
  15% {left: 0%; }
  20% {left: -100%; }
  35% {left: -100%; }
  40% {left: -200%; }  
  55% {left: -200%; }
  60% {left: -300%; }
  75% {left: -300%; }
  80% {left: -400%; }
  95% {left: -400%; }   
  100% {left: 0; }
}
</style>

<body BACKGROUND="<c:url value='/resources/images/pg-bg.jpg'/>" >

<header1>
		<a  href="#">HOME</a> <a href="${cp}/test">GALLERIA</a>
		<a class="active" href="${cp}/mcart">PRODUCTS</a> <a href="${cp}/service">SERVICE
			AND SUPPORT</a> <a href="${cp}/contact">ABOUT US</a>
		<c:if test="${loggedInUserID != null}">
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
		</c:if>
		<c:if test="${loggedInUserID == null}">
			<a href="${cp}/checkuser">SIGNUP AND LOGIN</a>
		</c:if>
		</header1>
    <header class="cont-slider">
    <section class="slider">
   
      
      <article class="slide one"><span1>Smart</span></article><!--
      --><article class="slide two"><span>Witty</span></article><!--
      --><article class="slide three"><span> Gorgeous</span></article><!--
      --><article class="slide four"><span>Stamina</span></article><!--
      --><article class="slide five"><span>Powerful</span></article>
    </section>
</header>
		 <div class="card">
				<div class="wrapper row">
					<div class="details col-md-6">
						<h2>YOUR CART</h2>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<c:if test="${not empty cartList}">
							<tbody>
								<c:forEach items="${cartList}" var="data">

									<tr>
										<td class="active">${data.product_id}</td>
										<td align="left">${data.product_name}</td>
										<h4 class="price"><td>${data.price}</td></h4>

									</tr>
								</c:forEach>
								
							</tbody>
							<h2>${totalAmount}</h2>
						</c:if>
			</div>
									
					
						
			
			
				<div class="action">
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
					</div>
				</div>
			</div>
			<form id="webFlow" action="${cp}/webflow" method="post">
				
				</form>
<c:if test="${empty loggedInUserID}">
						<div class="action">
							<button onclick="location.href='${cp}/checkuser'" class="add-to-cart btn btn-default" type="button">BUY NOW</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
</c:if>
				<c:if test="${not empty loggedInUserID}">
						<div class="action">
							<button type="submit" form="webFlow" class="add-to-cart btn btn-default" type="button">CHECKOUT</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
</c:if>
</body>
</html>