<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<jsp:include page="jsfiles.jsp"></jsp:include>
		<jsp:include page="cssfiles.jsp"></jsp:include>
		<style type="text/css">
		 body {font: normal 0.9em Arial;margin:0;}
        a {color:#1155CC;}
        ul li {padding: 10px 0;}
        header {display:block;padding:60px 0 10px;background-color:#191919;text-align:center;}
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
<div id="ninja-slider">
		<div class="slider-inner">
			<ul>
				<li>
                    <a href="/"><img src="<c:url value="/resources/images/a.jpg" />"></a>
                    <div class="caption cap1">RESOLUTION</div>
                    <div class="caption cap1 cap2">THAT WILL BLOW YOUR MIND</div>
				
                </li>

				<li>
                    <a href="/"><img src="<c:url value="/resources/images/b.jpg" />"></a>
                    <div class="caption cap1">RESOLUTION</div>
                    <div class="caption cap1 cap2">THAT WILL STRIKE YOUR HEART</div>
				
                </li>
				<li>
                    <a href="/"><img src="<c:url value="/resources/images/c.jpg" />"></a>
                    <div class="caption cap1">RESOLUTION</div>
                    <div class="caption cap1 cap2">THAT WILL STEAL YOUR EYE</div>
				
                </li>
				<li>
                    <a href="/"><img src="<c:url value="/resources/images/d.jpg" />"></a>
                    <div class="caption cap1">RESOLUTION</div>
                    <div class="caption cap1 cap2">TO DIE FOR!</div>
				
                </li>
			</ul>
			<div class="fs-icon" title="Expand/Close"></div>
		</div>
	</div>

</body>
</html>