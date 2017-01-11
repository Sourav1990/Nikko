
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="cssfiles.jsp" />
<title>Register</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>


/* Wrapper for page content to push down footer */

/* Set the fixed height of the footer here */
.carousel.fade {
	opacity: 1;
}

.carousel.fade .item {
height:500px;
width:90%;
	transition: opacity ease-out .7s;
	margin-left: 50px;
	opacity: 0; /* hide all slides */
	top: 0;
	position: absolute;
	display: block;
}
.carousel.fade .item>img{
width:100%;
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
		margin-top: 50px;
		margin-bottom: 10px;
	}

}

/* bootstrap dropdown hover menu*/



nav {
  margin-top: 0px;
}

.navbar-default {
      background-color:transparent !important;
      background:rgba(0,0,0,0.5);
      border-color:transparent;
      background-image:none;
      box-shadow:none;  
 }
 .navbar-default .navbar-nav>li>a {
   box-shadow: 5px 4px 5px #000;	
     font-size:100px; 
     color:#fff; 
 }
div {
    display: block;
}

<!-- navbar font pattern>
.dropdown-menu.inverse a
{ 
background: #000;
font-weight: 300; color: #ccc; }
}

.navbar-nav>li>a {
position: relative; z-index: 15;
}

.navbar-nav a { font-weight: 400; font-size: 15px; }
.navbar-wrapper { position: relative; z-index: 15; }
.navbar-wrapper .container-fluid {position: relative; top: 0px; left: 0; }

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body BACKGROUND="<c:url value='/resources/images/pg-bg.jpg'/>"  />
		<!--  <div id="cd-logo"><img src="<c:url value="/resources/images/nik4.jpg" />"></div>-->
<div class="container-fluid">
		<nav class="navbar-nav>li>a">
		<div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav navbar-left">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
            <ul class="dropdown-menu inverse">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li><a href="#">Separated link</a></li>
            </ul>
          </li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
            <ul class="dropdown-menu inverse">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li><a href="#">Separated link</a></li>
           </ul>
          </li>
          
        </ul>
        <form action="login.jsp" method="POST">
         <nav class="main-nav">
<ul>
				
				
				<li><a class="cd-signin" href="#0">Sign in</a></li>
				<li><a class="cd-signup" href="#0">Sign up</a></li>
				
			</ul>
			</nav>
			</form>
      </div>
    </nav>
  </div><!-- /.container -->
	<div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0">Sign in</a></li>
				<li><a href="#0">New account</a></li>
			</ul>

			<div id="cd-login"> <!-- log in form -->
				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signin-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border" id="signin-password" type="text"  placeholder="Password">
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked>
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="submit" value="Login">
					</p>
				</form>
				
				<p class="cd-form-bottom-message"><a href="#0">Forgot your password?</a></p>
				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-login -->

			<div id="cd-signup"> <!-- sign up form -->
				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">Username</label>
						<input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border" id="signup-password" type="text"  placeholder="Password">
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms">
						<label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Create account">
					</p>
				</form>

				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-signup -->

			<div id="cd-reset-password"> <!-- reset password form -->
				<p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
			</div> <!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
		</div> <!-- cd-user-modal-container -->
	</div> <!-- cd-user-modal -->
<jsp:include page="jsfiles.jsp"></jsp:include>
</body>
</html>