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
header {display:block;padding:40px 0 30px;text-align:center;background:#000;}
        header a {
            font-family: sans-serif;
            font-size:10px;
            line-height: 24px;
            padding: 8px 13px 7px;
            color: #4d5256;
            text-decoration:none;
            transition: color 0.7s;
        }
        header a.active {
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
</style>
</head>
<body>
<form:form method="POST" commandName="user">
<header>
        <a href="#">HOME</a>
        <a href="test">GALLERIA</a>
        <a class="active" href="mcart">PRODUCTS</a>
        <a href="#">SERVICE AND SUPPORT</a>
        <a href="#">WHERE TO BUY</a>
        <a href="#">LEARN AND EXPLORE</a>
        <a href="#">ABOUT US</a>
        <a href="signup">SIGNUP AND LOGIN</a>
         Welcome, ${loggedInUserID}
         <button type="submit" form="viewMyCart" class="add-to-cart btn btn-default" type="button">VIEW</button> ${cartcount} ${cartcount}
    </header>
    </form:form>
<div class='p_slider'>
  <div class='p_slider__item'>
    <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/iwatch1.png'>
  </div>
  <div class='p_slider__item'>
    <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/iwatch2.png'>
  </div>
  <div class='p_slider__item'>
    <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/iwatch3.png'>
  </div>
</div>

	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="details col-md-6">
						<h3 class="product-title">${product.product_name}</h3>
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
						<p class="product-description">${product.product_description}</p>
						<h4 class="price">current price: <span>${product.product_price}</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
				<form id="addToCart" action="${cp}/selectedproduct/mcart/addCart" method="post">
				<input type="text" name="user_id" value="${user.user_id}" hidden="hidden"/>
				<input type="text" name="product_id" value="${product.product_id}" hidden="hidden"/>
				<input type="text" name="product_name" value="${product.product_name}" hidden="hidden"/>
				<input type="number" name="Quantity" value="1"/>
				<input type="number" name="price" value="${product.product_price}" hidden="hidden"/>
				<input type="text" name="Status" value="N" hidden="hidden"/>
				
				</form>
				<form id="viewMyCart" action="${cp}/selectedproduct/mcart/viewCart" method="post">
				<input type="text" name="user_id" value="${user.user_id}" hidden="hidden"/>
				<input type="text" name="product_id" value="${product.product_id}" hidden="hidden"/>
				<input type="text" name="product_name" value="${product.product_name}" hidden="hidden"/>
				<input type="number" name="price" value="${product.product_price}" hidden="hidden"/>
				<input type="text" name="Status" value="N" hidden="hidden"/>
				
				</form>
						<div class="action">
						<button type="submit" form="addToCart" class="add-to-cart btn btn-default" type="button">ADD TO CART</button>
							<button  class="add-to-cart btn btn-default" type="button">BUY NOW</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>



<script>
//3D Slider for Reece

/*=================================================
INIT
===================================================*/

on = 0;  // Init
time = 500; // Set the delay before the next click is accepted to 1 second
pos = 1; // Set init position
pos2 = 2;
pos3 = 3;

/*=================================================
CLICK FUNCTIONS
===================================================*/

// Right
$('.right').click(function(){
  rotateRight(); // Call
  on = 1; // Set delay on
});

// Left
$('.left').click(function(){
  rotateLeft(); // Call
  on = 1; // Set delay on
});

/*=================================================
AUTOPLAY
===================================================*/

play = setInterval(function(){
  rotateLeft()
},3000)

/*=================================================
ROTATE FUNCTIONS
===================================================*/

// Rotate left
function rotateLeft(){
  if(on == 0){
    $('.p_slider__item:nth-of-type(' + pos + ')').animate({'left':'200px'},200)
    $('.p_slider__item:nth-of-type(' + pos + ')').css('z-index','0')
    $('.p_slider__item:nth-of-type(' + pos2 + ')').animate({'left':'-200px'},200)
    setTimeout (function(){
      $('.p_slider__item:nth-of-type(' + pos2 + ')').css({'transform':'scale(0.6)','opacity':'0.8','webkit-filter':'blur(2px)','z-index':'1'});
      pos++;pos2++;pos3++;
      if(pos > 3){pos = 1}if(pos2 > 3){pos2 = 1;}if(pos3 > 3){pos3 = 1;}
    },400)
    $('.p_slider__item:nth-of-type(' + pos3 + ')').animate({'left':'0px'},200)
    $('.p_slider__item:nth-of-type(' + pos3 + ')').css({'transform':'scale(1)','opacity':'1','webkit-filter':'blur(0px)','z-index':'2'})
    setTimeout (function(){
      on = 0; // Accept clicks again
    },time)
  }
}

// Rotate right
function rotateRight(){
  if(on == 0){
    $('.p_slider__item:nth-of-type(' + pos3 + ')').animate({'left':'-200px'},200)
    $('.p_slider__item:nth-of-type(' + pos3 + ')').css('z-index','0')
    $('.p_slider__item:nth-of-type(' + pos2 + ')').animate({'left':'200px'},200)
    setTimeout (function(){
      $('.p_slider__item:nth-of-type(' + pos2 + ')').css({'transform':'scale(0.6)','opacity':'0.8','webkit-filter':'blur(2px)','z-index':'0'});
      pos--;pos2--;pos3--;
      if(pos < 1){pos = 3}if(pos2 < 1){pos2 = 3;}if(pos3 < 1){pos3 = 3;}
      console.log(pos,pos2,pos3)
    },400)
    $('.p_slider__item:nth-of-type(' + pos + ')').animate({'left':'0px'},200)
    $('.p_slider__item:nth-of-type(' + pos + ')').css({'transform':'scale(1)','opacity':'1','webkit-filter':'blur(0px)','z-index':'1'})
    setTimeout (function(){
      on = 0; // Accept clicks again
    },time)
  }
}

$('.p_slider__item img').hover(function(){
  clearInterval(play)
})
$('.p_slider__item img').mouseenter(function(){
  $(this).animate({'top':'-14px'},300);
})
$('.p_slider__item img').mouseout(function(){
  $(this).stop(true,false).animate({'top':'0px'},300)
  play = setInterval(function(){
    rotateLeft()
  },3000)
})
</script>

</body>
</html>