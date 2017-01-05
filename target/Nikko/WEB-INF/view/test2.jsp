<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="cssfiles.jsp" />
<jsp:include page="jsfiles.jsp" />
<style>
        body {font: normal 0.9em Arial;margin:0;}
        a {color:#1155CC;}
        header {display:block;padding:40px 0 30px;text-align:center;background:#000;}
        header a {
            font-family: sans-serif;
            font-size: 24px;
            line-height: 24px;
            padding: 8px 13px 7px;
            color: #4d5256;
            text-decoration:none;
            transition: color 0.7s;
        }
        header a.active {
            font-weight:bold;
            width: 24px;
            height: 24px;
            padding: 4px;
            text-align: center;
            display:inline-block;
            border-radius: 50%;
            background: #4d5256;
            color: #191919;
        }
    </style>

</head>
<body>
    <header>
    </header>
    <!--start-->
    <div id="ninja-slider">
        <div class="slider-inner">
            <ul>
                <li>
                    <a class="ns-img" href="https://static.pexels.com/photos/36487/above-adventure-aerial-air.jpg"></a>
                </li>
                <li>
                    <a class="ns-img" href="img/b.jpg"></a>
                </li>
                <li>
                    <a class="ns-img" href="img/c.jpg"></a>
                </li>
                <li>
                    <a class="ns-img" href="img/d.jpg"></a>
                </li>
            </ul>
        </div>
    </div>
    <!--end-->
<div style="max-width:700px;margin:90px auto;">
        <p>Please click <a href="http://www.menucool.com/slider/slider-that-adapts-to-window-height">here</a> to see:</p>
        <ul>
            <li>How to make this Ninja Slider responsive on height</li>
            <li>How to hide the navigation buttons/arrows when on mobile phones</li>
            <li>If you have captions for each slide, and want to show the caption outside the slider, 
            please visit <a href="http://www.menucool.com/slider/show-image-gallery-on-modal-popup">demo 8</a></li>
        </ul>

</body>

</html>