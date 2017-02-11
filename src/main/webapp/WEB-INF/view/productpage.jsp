<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<html>
<head>
<jsp:include page="jsfiles.jsp"></jsp:include>
<jsp:include page="cssfiles.jsp"></jsp:include>
<jsp:include page="fontfiles.jsp"></jsp:include>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<springtags:url value="/resources/images/productimages"
	var="imageFolder" />
<style>
@import 'http://geo-gvnix.rhcloud.com/resources/styles/standard.css';

@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,600)
	;

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

figure.snip1195 {
	font-family: 'Raleway', Arial, sans-serif;
	position: relative;
	float: right;
	overflow: hidden;
	padding-left: 1px;
	margin: 10px 1%;
	min-width: 400px;
	max-width: 900px;
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

figure.snip1195 h4, figure.snip1195 p, figure.snip1195 .price {
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

figure.snip1195:hover img, figure.snip1195.hover img {
	opacity: 0.6;
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}

figure.snip1195:hover .add-to-cart, figure.snip1195.hover .add-to-cart {
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
	top: 50px;
	bottom: 5px;
	padding: 0px;
	width: 100px;
	background: rgba(0, 0, 0, 0.8);
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
header.navbar+nav.navbar {
	/* margin-top: 20px;same margin-bottom .navbar */
	
}

.navbar.navbar-default.navbar-fixed-top {
	margin-top: 50px;
}

.sidebar.navbar-fixed-top {
	margin-top: 100px;
}

@media ( min-width : 768px) and (max-width: 998px) {
	.navbar.navbar-default.navbar-fixed-top {
		margin-top: 100px;
	}
	.sidebar.navbar-fixed-top {
		margin-top: 150px;
	}
}

/* Custom navbar default: global*/
.navbar.navbar-default {
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

.navbar.navbar-default .navbar-nav>li>a {
	color: #666;
	text-shadow: none;
}

.navbar.navbar-default .navbar-nav>li>a {
	color: #666;
	text-shadow: none;
}

.navbar.navbar-default .navbar-nav>li>a:hover {
	color: #acc47f;
}

.navbar.navbar-default .navbar-nav>.active>a {
	color: #fff;
	background-color: #acc47f;
}

.navbar.navbar-default .navbar-nav>.active>a:hover {
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

nav.sidebar, .main {
	-webkit-transition: margin 200ms ease-out;
	-moz-transition: margin 200ms ease-out;
	-o-transition: margin 200ms ease-out;
	transition: margin 200ms ease-out;
}

/* Add gap to nav and right windows.*/
.main {
	padding: 10px 10px 0 10px;
}

/* .....NavBar: Icon only with coloring/layout.....*/

/*small/medium side display*/
@media ( min-width : 768px) {
	/*Allow main to be next to Nav*/
	.main {
		position: absolute;
		width: calc(100% - 40px); /*keeps 100% minus nav size*/
		margin-left: 40px;
		float: right;
	}

	/*lets nav bar to be showed on mouseover*/
	nav.sidebar:hover+.main {
		margin-left: 200px;
	}

	/*Center Brand*/
	nav.sidebar.navbar.sidebar>.container .navbar-brand, .navbar>.container-fluid .navbar-brand
		{
		margin-left: 0px;
	}
	/*Center Brand*/
	nav.sidebar .navbar-brand, nav.sidebar .navbar-header {
		text-align: center;
		width: 100%;
		margin-left: 0px;
	}

	/*Center Icons*/
	nav.sidebar a {
		padding-right: 13px;
		min-width: 100px;
	}

	/*custom sidebar nav*/
	nav.sidebar ul.nav.navbar-nav {
		margin: 0;
	}
	nav.sidebar.navbar-inverse .navbar-nav .open .dropdown-menu>li>a {
		color: white;
	}

	/*adds border top to first nav box */
	nav.sidebar .navbar-nav>li:first-child {
		border-top: 1px #e5e5e5 solid;
	}

	/*adds border to bottom nav boxes*/
	nav.sidebar .navbar-nav>li {
		border-bottom: 1px #e5e5e5 solid;
	}
	/*adds background on hover*/
	nav.sidebar .navbar-nav>li:hover {
		color: #fff;
		background-color: #43600E;
	}
	/*removes border last element*/
	nav.sidebar .navbar-nav>li.last {
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
	nav.sidebar .navbar-collapse, nav.sidebar .container-fluid {
		padding: 0 0px 0 0px;
	}

	/*colors dropdown box text */
	.navbar-inverse .navbar-nav .open .dropdown-menu>li>a {
		color: #777;
	}

	/*gives sidebar width/height*/
	nav.sidebar {
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
	nav.sidebar:hover {
		margin-left: 0px;
	}
	/*for hiden things when navbar hidden*/
	.forAnimate {
		opacity: 0;
	}
}

/* .....NavBar: Fully showing nav bar..... */
@media ( min-width : 1330px) { /*     Allow main to be next to Nav
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

nav.sidebar .navbar-nav .open .dropdown-menu>li>a:hover, nav.sidebar .navbar-nav .open .dropdown-menu>li>a:focus
	{
	color: #CCC;
	background-color: transparent;
}

nav:hover .forAnimate {
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

.nav-side-menu ul, .nav-side-menu li {
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

.nav-side-menu ul :not(collapsed) .arrow:before, .nav-side-menu li :not(collapsed) .arrow:before
	{
	font-family: FontAwesome;
	content: "\f078";
	display: inline-block;
	padding-left: 10px;
	padding-right: 10px;
	vertical-align: middle;
	float: right;
}

.nav-side-menu ul .active, .nav-side-menu li .active {
	border-left: 3px solid #d19b3d;
	background-color: #4f5b69;
}

.nav-side-menu ul .sub-menu li.active, .nav-side-menu li .sub-menu li.active
	{
	color: #d19b3d;
}

.nav-side-menu ul .sub-menu li.active a, .nav-side-menu li .sub-menu li.active a
	{
	color: #d19b3d;
}

.nav-side-menu ul .sub-menu li, .nav-side-menu li .sub-menu li {
	background-color: #181c20;
	border: none;
	line-height: 28px;
	border-bottom: 1px solid #23282e;
	margin-left: 0px;
}

.nav-side-menu ul .sub-menu li:hover, .nav-side-menu li .sub-menu li:hover
	{
	background-color: #020203;
}

.nav-side-menu ul .sub-menu li:before, .nav-side-menu li .sub-menu li:before
	{
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

@media ( max-width : 767px) {
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

@media ( min-width : 767px) {
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

input[type=text] {
	width: 200px;
	padding: 8px 10px;
}

li em {
	background: #ff6;
	font-weight: bold;
	font-style: normal;
}

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

body {
	background: #555;
}

#search5back {
	margin: 0 auto;
}

#searchbox5 {
	width: 200px;
	margin: 0 auto;
	padding: 50px 0 30px;
}

#search5 {
	background:
		url(data:image/png;base64,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)
		no-repeat 10px 6px #444;
	border: 0 none;
	font: bold 12px Arial, Helvetica, Sans-serif;
	color: #777;
	width: 150px;
	padding: 6px 15px 6px 35px;
	border-radius: 20px;
	text-shadow: 0 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px
		rgba(0, 0, 0, 0.2) inset;
	-webkit-transition: all 0.7s ease 0s;
}

#search5:focus {
	width: 200px;
	outline: 0;
}

#search51 {
	background:
		url(data:image/png;base64,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)
		no-repeat 10px 6px #fcfcfc;
	border: 1px solid #d1d1d1;
	font: bold 12px Arial, Helvetica, Sans-serif;
	color: #bebebe;
	width: 150px;
	padding: 6px 15px 6px 35px;
	border-radius: 20px;
	text-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset;
	-webkit-transition: all 0.7s ease 0s;
}

#search51:focus {
	width: 200px;
	outline: 0;
}

#search52 {
	background:
		url(data:image/png;base64,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)
		no-repeat 10px 6px #444;
	border: 0 none;
	font: bold 12px Arial, Helvetica, Sans-serif;
	color: #d7d7d7;
	width: 150px;
	padding: 6px 15px 6px 35px;
	border-radius: 20px;
	text-shadow: 0 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px
		rgba(0, 0, 0, 0.2) inset;
	-webkit-transition: all 0.7s ease 0s;
}

#search52:focus {
	background:
		url(data:image/png;base64,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)
		no-repeat 10px 6px #fcfcfc;
	color: #6a6f75;
	width: 200px;
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(0, 0, 0, 0.9)
		inset;
	text-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	outline: 0;
}

.byline p {
	text-align: center;
	color: #c6c6c6;
	font: bold 18px Arial, Helvetica, Sans-serif;
	text-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
}

.byline p a {
	color: #000;
	text-decoration: none;
}

​.form-wrapper {
	width: 450px;
	padding: 15px;
	margin: 150px auto 50px auto;
	background: #444;
	background: rgba(0, 0, 0, .2);
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .4) inset, 0 1px 0
		rgba(255, 255, 255, .2);
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .4) inset, 0 1px 0
		rgba(255, 255, 255, .2);
	box-shadow: 0 1px 1px rgba(0, 0, 0, .4) inset, 0 1px 0
		rgba(255, 255, 255, .2);
}

.form-wrapper input {
	width: 330px;
	height: 20px;
	padding: 10px 5px;
	float: left;
	font: bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma';
	border: 0;
	background: #eee;
	-moz-border-radius: 3px 0 0 3px;
	-webkit-border-radius: 3px 0 0 3px;
	border-radius: 3px 0 0 3px;
}

.form-wrapper input:focus {
	outline: 0;
	background: #fff;
	-moz-box-shadow: 0 0 2px rgba(0, 0, 0, .8) inset;
	-webkit-box-shadow: 0 0 2px rgba(0, 0, 0, .8) inset;
	box-shadow: 0 0 2px rgba(0, 0, 0, .8) inset;
}

.form-wrapper input::-webkit-input-placeholder {
	color: #999;
	font-weight: normal;
	font-style: italic;
}

.form-wrapper input:-moz-placeholder {
	color: #999;
	font-weight: normal;
	font-style: italic;
}

.form-wrapper input:-ms-input-placeholder {
	color: #999;
	font-weight: normal;
	font-style: italic;
}

.form-wrapper button {
	overflow: visible;
	position: relative;
	float: right;
	border: 0;
	padding: 0;
	cursor: pointer;
	height: 40px;
	width: 110px;
	font: bold 15px/40px 'lucida sans', 'trebuchet MS', 'Tahoma';
	color: #fff;
	text-transform: uppercase;
	background: #d83c3c;
	-moz-border-radius: 0 3px 3px 0;
	-webkit-border-radius: 0 3px 3px 0;
	border-radius: 0 3px 3px 0;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, .3);
}

.form-wrapper button:hover {
	background: #e54040;
}

.form-wrapper button:active, .form-wrapper button:focus {
	background: #c42f2f;
}

.form-wrapper button:before {
	content: '';
	position: absolute;
	border-width: 8px 8px 8px 0;
	border-style: solid solid solid none;
	border-color: transparent #d83c3c transparent;
	top: 12px;
	left: -6px;
}

.form-wrapper button:hover:before {
	border-right-color: #e54040;
}

.form-wrapper button:focus:before {
	border-right-color: #c42f2f;
}

.form-wrapper button::-moz-focus-inner {
	border: 0;
	padding: 0;
}
.show-on-hover:hover>ul.dropdown-menu {
	display: block;
	
}
</style>

</head>

<body>
	<header>
		<a href="${cp}/test3">HOME</a> <a href="${cp}/test">GALLERIA</a> <a
		class="active"	href="${cp}/mcart">PRODUCTS</a> <a href="${cp}/service">SERVICE
			AND SUPPORT</a> <a href="${cp}/contact">ABOUT US</a> 
			<c:if test="${loggedInUserID == null}">
	<a href="${cp}/checkuser">SIGNUP AND LOGIN</a>
	</c:if>
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
		
	</header>
	<div id="bg-asset"></div>
	<%-- <c:forEach items="${productlist}" var="data">
	<form id="searchingProduct" action="${cp}/searchproduct/viewmyproduct/${data.product_id}"
		method="get">
	</form>
	</c:forEach>
	<div id="search5back">
		<form id="searchbox5" class="form-wrapper cf">
			<input id="search52" name="q" type="text" size="100"
				placeholder="Search..." />
			<button type="submit" form="searchingProduct">Search</button>
		</form>
	</div> --%>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 ">
			<div class="table-responsive">
				<table class="table table-hover table-condensed cf table2">
					<thead class="cf">
					</thead>
					<%-- 	<c:set var="imageFolder" value="resourc es/images/productimages"/>--%>
					<tbody>
						<c:forEach items="${productlist}" var="data">


							<tr>
								<th scope="row">
								<figure class="snip1195">
										<div class="image">
											<a class="hovertext"
												href="${cp}/productlist/viewproduct/${data.product_id}"
												title="Explore"><img
												src="${imageFolder}/${data.product_id}.jpg"></a>
										</div>
										<figcaption>
											<p>I'm just very selective about the reality I choose to
												accept.</p>
											<div class="price">
												<s>300000</s>${data.product_price}
											</div>
										</figcaption>
										<a href="${cp}/productlist/viewproduct/${data.product_id}"
											class="add-to-cart">VIEW</a>
									</figure>
									</th>
							</tr>
							

						</c:forEach>

					</tbody>


				</table>

				<span class="counter pull-right"></span>
				<table class="table table-hover table-bordered results">
					<tbody>




					</tbody>
				</table>

			</div>
		</div>
	</div>





	<aside>
		<nav class="navbar navbar-inverse sidebar navbar-fixed-top"
			role="navigation">

			<div class="nav-side-menu">
				<div class="brand">Brand Logo</div>
				<i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse"
					data-target="#menu-content"></i>

				<div class="menu-list">

					<ul id="menu-content" class="menu-content collapse out">
						<li><a href="#"> <i class="fa fa-dashboard fa-lg"></i>
								Dashboard
						</a></li>

						<li data-toggle="collapse" data-target="#products"
							class="collapsed active"><a href="#"><i
								class="fa fa-gift fa-lg"></i> NIKON <i
								class="fa fa-gift fa-lg btn pull-right" style="margin-top: 5px"></i></a>
						</li>
						<ul class="sub-menu collapse" id="products">
							<li class="active"><a href="#">NIKON</a></li>
							<li><a href="#">ENTRY-LEVEL DSLRS</a></li>
							<li><a href="#">ENTHUSIAST DSLRS</a></li>
						</ul>
						<li><a href="#"> <i class="fa fa-user fa-lg"></i> Profile
						</a></li>

						<li><a href="#"> <i class="fa fa-users fa-lg"></i> Users
						</a></li>
					</ul>
				</div>
			</div>
		</nav>

	</aside>
	<script>
		function htmlbodyHeightUpdate() {
			var height3 = $(window).height()
			var height1 = $('.nav').height() + 50
			height2 = $('.main').height()
			if (height2 > height3) {
				$('html').height(Math.max(height1, height3, height2) + 10);
				$('body').height(Math.max(height1, height3, height2) + 10);
			} else {
				$('html').height(Math.max(height1, height3, height2));
				$('body').height(Math.max(height1, height3, height2));
			}

		}
		$(document).ready(function() {
			htmlbodyHeightUpdate()
			$(window).resize(function() {
				htmlbodyHeightUpdate()
			});
			$(window).scroll(function() {
				height2 = $('.main').height()
				htmlbodyHeightUpdate()
			});
		});
	</script>

</body>
</html>

