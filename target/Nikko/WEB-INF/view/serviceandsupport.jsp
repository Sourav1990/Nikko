<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

body:not(.nohover) tbody tr:hover {
  background-color: #ffa;
}

td:hover::after,
thead th:not(:empty):hover::after,
td:focus::after,
thead th:not(:empty):focus::after { 
  content: '';  
  height: 10000px;
  left: 0;
  position: absolute;  
  top: -5000px;
  width: 100%;
  z-index: -1;
}

td:hover::after,
th:hover::after {
  background-color: #ffa;
}

td:focus::after,
th:focus::after {
  background-color: lightblue;
}

/* Focus stuff for mobile */
td:focus::before,
tbody th:focus::before {
  background-color: lightblue;
  content: '';  
  height: 100%;
  top: 0;
  left: -5000px;
  position: absolute;  
  width: 10000px;
  z-index: -1;
}
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
            background: url('https://www.stakeholdermap.com/ninja-slider/pg-bg.jpg');
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
        .show-on-hover:hover>ul.dropdown-menu {
	display: block;
	
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <header> <a href="${cp}/test3">HOME</a> <a  href="${cp}/test">GALLERIA</a>
	<a  href="${cp}/mcart">PRODUCTS</a> <a class="active"
		href="${cp}/service">SERVICE AND SUPPORT</a> <a href="${cp}/contact">ABOUT
		US</a> <c:if test="${loggedInUserID == null}">
	<a href="${cp}/checkuser">SIGNUP AND LOGIN</a>
	</c:if> <c:if test="${loggedInUserID != null}">
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
		</c:if> </header>    <!--start-->
    <div id="bg-asset"></div>
<main>
  <table>
    <thead>
      <tr>
        <th></th>
        <th class="col">INDIA</th>
        <th class="col">BRAZIL</th>
        <th class="col">LOS ANGELES</th>
        <th class="col">AMSTERDAM</th>
        <th class="col">MALAYSIA</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th class="row">NIKKON OFFICIAL LOUNGE</th>
        <td>West Bengal</td>
        <td>Mato Grosso</td>
        <td>Alhambra</td>
        <td>Drenthe</td>
        <td>Kuala Lumpur</td>
      </tr>

      <tr>
        <th class="row">NIKKO PVT.LTD</th>
        <td>Rajasthan</td>
        <td>Mato Grosso do Sul</td>
        <td>Arcadia</td>
        <td>Flevoland</td>
        <td>Johor Bahru</td>
      </tr>

      <tr>
        <th class="row">NIKKON ARRKAY INTERNATIONAL</th>
        <td>Karnataka</td>
        <td>Minas Gerais</td>
        <td>Artesia</td>
        <td>Friesland</td>
        <td>Ipoh</td>
      </tr>

      <tr>
        <th class="row">NIKKON ACTION CENTRE</th>
        <td>Delhi</td>
        <td>Para</td>
        <td>Avalon</td>
        <td>Gelderland</td>
        <td>Shah Alam</td>
      </tr>
    <tbody>
  </table>
</main>
<script>

if (screen.width < 500) {
  
  $("body").addClass("nohover");
  $("td, th")
    .attr("tabindex", "1")
    .on("touchstart", function() {
      $(this).focus();
    });
  
}
</script>
<hr>
 <footer class="footer">
  <div class="footer-left col-md-4 col-sm-6">
    <p class="about">
      <span> About the company</span> An exclusive galleria for all the camera lovers. Just step in once to see the wide range of collection. Surely, not to be missed.
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
      <p><span>14/1A,Wellington Street,Nikko Corporation Pvt.Ltd</span> Kolkata, INDIA</p>
    </div>
    <div>
      <span class="fa fa-phone"></span>
      <p> (+91) 1234 567 890</p>
    </div>
    <div>
      <span class="fa fa-envelope"></span>
      <p><a href="#"> visitus@nikko.com</a></p>
    </div>
  </div>
  <div class="footer-right col-md-4 col-sm-6">
    <h2> Company<span> logo</span></h2>
    <p class="name"> Company Name &copy; 2017</p>
  </div>
</footer>
</body>
</html>