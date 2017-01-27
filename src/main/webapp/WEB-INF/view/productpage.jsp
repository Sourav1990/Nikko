<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="cp" value="${pageContext.request.contextPath}" />
<html>
<head>
<jsp:include page="jsfiles.jsp"></jsp:include>
		<jsp:include page="cssfiles.jsp"></jsp:include>
		<jsp:include page="fontfiles.jsp"></jsp:include>
		<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  @import 'http://geo-gvnix.rhcloud.com/resources/styles/standard.css';
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,600);
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
figure.snip1195 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: right;
  overflow: hidden;
  padding-left:1px;
  margin: 10px 1%;
  min-width: 400px;
  max-width: 480px;
  width: 100%;
  background: #1a1a1a;
  color: #ffffff;
  text-align: center;
  border-radius: 8px;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
}
figure.snip1195 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
figure.snip1195 .image {
  background-color: #000000;
  width: 50%;
  overflow: hidden;
}
figure.snip1195 img {
  max-width: 100%;
  vertical-align: top;
}
figure.snip1195 figcaption {
  position: absolute;
  width: 50%;
  right: 0;
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  padding: 10px 35px;
}
figure.snip1195 h4,
figure.snip1195 p,
figure.snip1195 .price {
  margin: 0 0 8px;
}
figure.snip1195 h4 {
  position: absolute;
  width: 50%;
  top: 10px;
  text-transform: uppercase;
  font-weight: 400;
  color: #ffffff;
  letter-spacing: 1px;
  z-index: 1;
}
figure.snip1195 p {
  font-size: 0.7em;
  font-weight: 500;
  line-height: 1.6em;
}
figure.snip1195 .rating {
  position: absolute;
  width: 50%;
  line-height: 44px;
  color: #ffffff;
  left: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.3);
}
figure.snip1195 .price {
  color: #ffffff;
  font-size: 1.3em;
  opacity: 0.8;
}
figure.snip1195 .price s {
  display: inline-block;
  padding: 0 8px 0 0;
  font-size: 0.85em;
  color: #f39c12;
}
figure.snip1195 .add-to-cart {
  text-decoration: none;
  position: absolute;
  bottom: 0;
  right: 0;
  font-weight: 600;
  width: 50%;
  background-color: rgba(0, 0, 0, 0.2);
  line-height: 44px;
  font-size: 0.75em;
  text-transform: uppercase;
  color: #ffffff;
}
figure.snip1195:hover img,
figure.snip1195.hover img {
  opacity: 0.6;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip1195:hover .add-to-cart,
figure.snip1195.hover .add-to-cart {
  background-color: rgba(0, 0, 0, 0.5);
}
/* Demo purposes only */
body {
  background-color: transparent !important;
}

a.hovertext {
	font-family: 'Raleway';
    position: relative;
    width: 200px;
    text-decoration: none !important;
    text-align: center;
  }
  a.hovertext:after {
    content: attr(title);
    position: absolute;
    left: 70px;
    top:50px;
    bottom: 5px;
    padding: 0px;
    width: 100px;
    background: rgba(0,0,0,0.8);
    text-decoration: none !important;
    color: #fff;
    opacity: 0;
    -webkit-transition: 0.5s;
    -moz-transition: 0.5s;
    -o-transition: 0.5s;
    -ms-transition: 0.5s;
  }
  a.hovertext:hover:after, a.hovertext:focus:after {
  opacity: 1.0;
  }
    /* Adding gvnix styles css - NO COPIAR */
 /* Custom fixed navs */

   header.navbar+nav.navbar{
   /* margin-top: 20px;same margin-bottom .navbar */
   }
   .navbar.navbar-default.navbar-fixed-top{
   margin-top: 50px;
   }
   .sidebar.navbar-fixed-top{
    margin-top: 100px;
   }

   @media (min-width: 768px) and (max-width: 998px){
       .navbar.navbar-default.navbar-fixed-top{
       margin-top: 100px;
       }
       .sidebar.navbar-fixed-top{
        margin-top: 150px;
       }
    }

  /* Custom navbar default: global*/

  .navbar.navbar-default{
    background-color: #f8f8f8;
    border-color: #e7e7e7;
    margin: 0;
    border-radius: 0;
  }
  .navbar.navbar-default .navbar-brand {
    color: #666;
    text-shadow: none;
    min-width: 150px;
    }
   .navbar.navbar-default .navbar-nav > li > a {
    color: #666;
    text-shadow: none;
    }
    .navbar.navbar-default .navbar-nav > li > a {
    color: #666;
    text-shadow: none;
    }
    .navbar.navbar-default .navbar-nav > li > a:hover{
    color: #acc47f;
    }
    .navbar.navbar-default .navbar-nav > .active > a{
    color: #fff;
    background-color: #acc47f;
    }
    .navbar.navbar-default .navbar-nav > .active > a:hover{
    color: #608224;
    background-color: #acc47f;
    }
    .navbar.navbar-default .caret {
    border-top-color: #ccc;
    border-bottom-color: #ccc;
    }
    .navbar.navbar-default .caret:hover {
    border-top-color: #333;
    border-bottom-color: #333;
    }


/* Custom sidebar menu */

 /*Remove rounded coners*/

  nav.sidebar.navbar {
    border-radius: 0px;
  }

  nav.sidebar, .main{
    -webkit-transition: margin 200ms ease-out;
      -moz-transition: margin 200ms ease-out;
      -o-transition: margin 200ms ease-out;
      transition: margin 200ms ease-out;
  }

  /* Add gap to nav and right windows.*/
  .main{
    padding: 10px 10px 0 10px;
  }

  /* .....NavBar: Icon only with coloring/layout.....*/

  /*small/medium side display*/
  @media (min-width: 768px) {

    /*Allow main to be next to Nav*/
    .main{
      position: absolute;
      width: calc(100% - 40px); /*keeps 100% minus nav size*/
      margin-left: 40px;
      float: right;
    }

    /*lets nav bar to be showed on mouseover*/
    nav.sidebar:hover + .main{
      margin-left: 200px;
    }

    /*Center Brand*/
    nav.sidebar.navbar.sidebar>.container .navbar-brand, .navbar>.container-fluid .navbar-brand {
      margin-left: 0px;
    }
    /*Center Brand*/
    nav.sidebar .navbar-brand, nav.sidebar .navbar-header{
      text-align: center;
      width: 100%;
      margin-left: 0px;
    }

    /*Center Icons*/
    nav.sidebar a{
      padding-right: 13px;
            min-width: 100px;
    }

    /*custom sidebar nav*/
        nav.sidebar ul.nav.navbar-nav{
            margin: 0;
        }
        nav.sidebar.navbar-inverse .navbar-nav .open .dropdown-menu>li>a {
            color: white;
        }

    /*adds border top to first nav box */
    nav.sidebar .navbar-nav > li:first-child{
      border-top: 1px #e5e5e5 solid;
    }

    /*adds border to bottom nav boxes*/
    nav.sidebar .navbar-nav > li{
      border-bottom: 1px #e5e5e5 solid;
    }
    /*adds background on hover*/
    nav.sidebar .navbar-nav > li:hover{
        color: #fff;
            background-color: #43600E;
    }
    /*removes border last element*/
    nav.sidebar .navbar-nav > li.last{
      border-bottom: none;
    }

    /* Colors/style dropdown box*/
    nav.sidebar .navbar-nav .open .dropdown-menu {
      position: static;
      float: none;
      width: auto;
      margin-top: 0;
      background-color: transparent;
      border: 0;
      -webkit-box-shadow: none;
      box-shadow: none;
    }

    /*allows nav box to use 100% width*/
    nav.sidebar .navbar-collapse, nav.sidebar .container-fluid{
      padding: 0 0px 0 0px;
    }

    /*colors dropdown box text */
    .navbar-inverse .navbar-nav .open .dropdown-menu>li>a {
      color: #777;
    }


    /*gives sidebar width/height*/
    nav.sidebar{
      width: 200px;
      height: 100%;
      margin-left: -270px;
      float: left;
      z-index: 8000;
      margin-bottom: 0px;
    }

    /*give sidebar 100% width;*/
    nav.sidebar li {
      width: 100%;
    }

    /* Move nav to full on mouse over*/
    nav.sidebar:hover{
      margin-left: 0px;
    }
    /*for hiden things when navbar hidden*/
    .forAnimate{
      opacity: 0;
    }
  }

  /* .....NavBar: Fully showing nav bar..... */

  @media (min-width: 1330px) {

/*     Allow main to be next to Nav
    .main{
      width: calc(100% - 200px); keeps 100% minus nav size
      margin-left: 200px;
    }

    Show all nav
    nav.sidebar{
      margin-left: 0px;
      float: left;
    }
    Show hidden items on nav
    nav.sidebar .forAnimate{
      opacity: 1;
    } */
  }

  nav.sidebar .navbar-nav .open .dropdown-menu>li>a:hover, nav.sidebar .navbar-nav .open .dropdown-menu>li>a:focus {
    color: #CCC;
    background-color: transparent;
  }

  nav:hover .forAnimate{
    opacity: 1;
  }
  
  
  /*---- FIM SLIDE MENU*/
  
  .nav-side-menu {
  overflow: auto;
  font-family: verdana;
  font-size: 12px;
  font-weight: 200;
  background-color: #2e353d;
  position: fixed;
  top: 0px;
  width: 300px;
  height: 100%;
  color: #e1ffff;
}
.nav-side-menu .brand {
  background-color: #23282e;
  line-height: 50px;
  display: block;
  text-align: center;
  font-size: 14px;
}
.nav-side-menu .toggle-btn {
  display: none;
}
.nav-side-menu ul,
.nav-side-menu li {
  list-style: none;
  padding: 0px;
  margin: 0px;
  line-height: 35px;
  cursor: pointer;
  /*    
    .collapsed{
       .arrow:before{
                 font-family: FontAwesome;
                 content: "\f053";
                 display: inline-block;
                 padding-left:10px;
                 padding-right: 10px;
                 vertical-align: middle;
                 float:right;
            }
     }
*/
}
.nav-side-menu ul :not(collapsed) .arrow:before,
.nav-side-menu li :not(collapsed) .arrow:before {
  font-family: FontAwesome;
  content: "\f078";
  display: inline-block;
  padding-left: 10px;
  padding-right: 10px;
  vertical-align: middle;
  float: right;
}
.nav-side-menu ul .active,
.nav-side-menu li .active {
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
}
.nav-side-menu ul .sub-menu li.active,
.nav-side-menu li .sub-menu li.active {
  color: #d19b3d;
}
.nav-side-menu ul .sub-menu li.active a,
.nav-side-menu li .sub-menu li.active a {
  color: #d19b3d;
}
.nav-side-menu ul .sub-menu li,
.nav-side-menu li .sub-menu li {
  background-color: #181c20;
  border: none;
  line-height: 28px;
  border-bottom: 1px solid #23282e;
  margin-left: 0px;
}
.nav-side-menu ul .sub-menu li:hover,
.nav-side-menu li .sub-menu li:hover {
  background-color: #020203;
}
.nav-side-menu ul .sub-menu li:before,
.nav-side-menu li .sub-menu li:before {
  font-family: FontAwesome;
  content: "\f105";
  display: inline-block;
  padding-left: 10px;
  padding-right: 10px;
  vertical-align: middle;
}
.nav-side-menu li {
  padding-left: 0px;
  border-left: 3px solid #2e353d;
  border-bottom: 1px solid #23282e;
}
.nav-side-menu li a {
  text-decoration: none;
  color: #e1ffff;
}
.nav-side-menu li a i {
  padding-left: 10px;
  width: 20px;
  padding-right: 20px;
}
.nav-side-menu li:hover {
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
  -webkit-transition: all 1s ease;
  -moz-transition: all 1s ease;
  -o-transition: all 1s ease;
  -ms-transition: all 1s ease;
  transition: all 1s ease;
}
@media (max-width: 767px) {
  .nav-side-menu {
    position: relative;
    width: 100%;
    margin-bottom: 10px;
  }
  .nav-side-menu .toggle-btn {
    display: block;
    cursor: pointer;
    position: absolute;
    right: 10px;
    top: 10px;
    z-index: 10 !important;
    padding: 3px;
    background-color: #ffffff;
    color: #000;
    width: 40px;
    text-align: center;
  }
  .brand {
    text-align: left !important;
    font-size: 22px;
    padding-left: 20px;
    line-height: 50px !important;
  }
}
@media (min-width: 767px) {
  .nav-side-menu .menu-list .menu-content {
    display: block;
  }
}
body {
  margin: 0px;
  padding: 0px;
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
}​
</style>

</head>

<body>
<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8 ">
				<div class="table-responsive">
					<table class="table table-hover table-condensed cf table2">
						<thead class="cf">
							<tr>
								<th></th>
								<th>ProductID</th>
								<th>Product Name</th>
								<th>Product Price</th>
								<th>Product Description</th>
							</tr>
						</thead>
						<c:if test="${not empty productlist}">
							<tbody>
								<c:forEach items="${productlist}" var="data">

									<tr>
										<td class="active">${data.product_id}</td>
										<td align="left">${data.product_name}</td>
										<td>${data.product_description}</td>
										<td>${data.product_price}</td>

									</tr><br>
									<li><a href="${cp}/productlist/viewproduct/${data.product_id}">${data.product_name}</a></li>

								</c:forEach>
							</tbody>
						</c:if>
						</table>
						</div>
						</div>
						</div>
						
<header>
        <a href="#">HOME</a>
        <a href="test">GALLERIA</a>
        <a class="active" href="mcart">PRODUCTS</a>
        <a href="#">SERVICE AND SUPPORT</a>
        <a href="#">WHERE TO BUY</a>
        <a href="#">LEARN AND EXPLORE</a>
        <a href="#">ABOUT US</a>
        <a href="signup">SIGNUP AND LOGIN</a>
    </header>
	

<aside>
  <nav class="navbar navbar-inverse sidebar navbar-fixed-top" role="navigation">
   
<div class="nav-side-menu">
    <div class="brand">Brand Logo</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">
                <li>
                  <a href="#">
                  <i class="fa fa-dashboard fa-lg"></i> Dashboard
                  </a>
                </li>

                <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                  <a href="#"><i class="fa fa-gift fa-lg"></i> NIKON  <i class="fa fa-gift fa-lg btn pull-right" style="margin-top:5px"></i></a>
                </li>
                <ul class="sub-menu collapse" id="products">
                    <li class="active"><a href="#">NIKON</a></li>
                    <li><a href="#">ENTRY-LEVEL DSLRS</a></li>
                    <li><a href="#">ENTHUSIAST DSLRS</a></li>
                    <li><a href="#">PROFESSIONAL DSLRS</a></li>
                    <li><a href="#">KITS & BUNDLES</a></li>
                    <li><a href="#">LENSES</a></li>
                    <li><a href="#">ACCESSORIES</a></li>
                    <li><a href="#">FILM CAMERAS</a></li>
                    <li><a href="#">SPORT OPTICS</a></li>
                    <li><a href="#">NIKON PARTS</a></li>
                </ul>
                 <li>
                  <a href="#">
                  <i class="fa fa-user fa-lg"></i> Profile
                  </a>
                  </li>

                 <li>
                  <a href="#">
                  <i class="fa fa-users fa-lg"></i> Users
                  </a>
                </li>
            </ul>
     </div>
</div>
  </nav>
  
</aside>
<script>
    function htmlbodyHeightUpdate(){
		var height3 = $( window ).height()
		var height1 = $('.nav').height()+50
		height2 = $('.main').height()
		if(height2 > height3){
			$('html').height(Math.max(height1,height3,height2)+10);
			$('body').height(Math.max(height1,height3,height2)+10);
		}
		else
		{
			$('html').height(Math.max(height1,height3,height2));
			$('body').height(Math.max(height1,height3,height2));
		}
		
	}
	$(document).ready(function () {
		htmlbodyHeightUpdate()
		$( window ).resize(function() {
			htmlbodyHeightUpdate()
		});
		$( window ).scroll(function() {
			height2 = $('.main').height()
  			htmlbodyHeightUpdate()
		});
	});
	</script>
	
</body>
</html>

