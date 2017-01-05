<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<jsp:include page="jsfiles.jsp"></jsp:include>
		<jsp:include page="cssfiles.jsp"></jsp:include>
	<jsp:include page="fontfiles.jsp"></jsp:include>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
<!--footer
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

.footer .footer-left,
.footer .footer-center,
.footer .footer-right {
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

@media (max-width: 767px) {
  .footer {
    font-size: 14px;
  }
  .footer .footer-left,
  .footer .footer-center,
  .footer .footer-right {
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

        body {font: normal 0.9em Arial;margin:0;}
        #bg-asset {
            position: fixed;
            background: url('file:///D:/Nikko/src/main/webapp/resources/images/pg-bg.jpg');
            z-index: -1;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }
        a {color:#1155CC;}
        h2 {margin-top: 60px;}
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
    </style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <header>
        <a class="active" href="#">HOME</a>
        <a href="#">PRODUCTS</a>
        <a href="#">SERVICE AND SUPPORT</a>
        <a href="#">WHERE TO BUY</a>
        <a href="#">LEARN AND EXPLORE</a>
        <a href="#">ABOUT US</a>
        <a href="signup.html">SIGNUP AND LOGIN</a>
    </header>
    <!--start-->
    <div id="bg-asset"></div>
    <div id="hover">
        <div class="slider-in">
            <ul>
                <li>
                    <div class="content">
                       <img src="<c:url value="/resources/images/nikor.jpg" />">
                        <h3>DIGITAL SLR</h3>
                    </div>
                </li>
                <li>
                    <div class="content">
                       <img src="<c:url value="/resources/images/nikor2.jpg" />">
                        <h3>NIKKOR LENS</h3>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <img src="<c:url value="/resources/images/nikor3.jpg" />">
                        <h3>ACTION CAMERAS</h3>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <img src="<c:url value="/resources/images/nikor4.jpg" />">
                        <h3>NIKON 1</h3>
                    </div>
                </li>
            </ul>
            <div class="fs-icon" title="Expand/Close"></div>
        </div>
    </div>
    <!--end-->
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
					<li data-target="#myCarousel" data-slide-to="5"></li>
					<li data-target="#myCarousel" data-slide-to="6"></li>
					<li data-target="#myCarousel" data-slide-to="7"></li>
					<li data-target="#myCarousel" data-slide-to="8"></li>
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
					<div class="item">
						<img src="<c:url value="/resources/images/nik4.png" />"
							alt="Flower" style="height: 100%;">
					</div>
					<div class="item">
						<img src="<c:url value="/resources/images/nik5.png" />"
							alt="Flower" style="height: 100%;">
					</div>
					<div class="item">
						<img src="<c:url value="/resources/images/nik6.png" />"
							alt="Flower" style="height: 100%;">
					</div>
				</div>
			</div>
		</div>
	</div>
<hr>
 <footer class="footer">
  <div class="footer-left col-md-4 col-sm-6">
    <p class="about">
      <span> About the company</span> Ut congue augue non tellus bibendum, in varius tellus condimentum. In scelerisque nibh tortor, sed rhoncus odio condimentum in. Sed sed est ut sapien ultrices eleifend. Integer tellus est, vehicula eu lectus tincidunt,
      ultricies feugiat leo. Suspendisse tellus elit, pharetra in hendrerit ut, aliquam quis augue. Nam ut nibh mollis, tristique ante sed, viverra massa.
    </p>
    <div class="icons">
      <a href="#"><span class="fa fa-facebook"></span></a>
      <a href="#"><span class="fa fa-twitter"></span></a>
      <a href="#"><span class="fa fa-linkedin"></span></a>
      <a href="#"><span class="fa fa-google-plus"></span></a>
      <a href="#"><span class="fa fa-instagram"></span></a>
    </div>
  </div>
  <div class="footer-center col-md-4 col-sm-6">
    <div>
      <span class="fa fa-map-marker"></span>
      <p><span> Street name and number</span> City, Country</p>
    </div>
    <div>
      <span class="fa fa-phone"></span>
      <p> (+00) 0000 000 000</p>
    </div>
    <div>
      <span class="fa fa-envelope"></span>
      <p><a href="#"> office@company.com</a></p>
    </div>
  </div>
  <div class="footer-right col-md-4 col-sm-6">
    <h2> Company<span> logo</span></h2>
    <p class="menu">
      <a href="#"> Home</a> |
      <a href="#"> About</a> |
      <a href="#"> Services</a> |
      <a href="#"> Portfolio</a> |
      <a href="#"> News</a> |
      <a href="#"> Contact</a>
    </p>
    <p class="name"> Company Name &copy; 2016</p>
  </div>
</footer>

</body>
</html>