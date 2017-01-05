<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<jsp:include page="jsfiles.jsp"></jsp:include>
		<jsp:include page="cssfiles.jsp"></jsp:include>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

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
        <a href="#">COMMUNITY</a>
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
	<iframe></iframe>
</body>
</html>