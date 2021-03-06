    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="cssfiles.jsp" />
<title>Register</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
		H5F.listen(window,"load",function () {
			H5F.setup(document.getElementById("signup"));
		},false);
	</script>
<style>
  @import url(http://fonts.googleapis.com/css?family=Raleway:400,100,200,300);
* {
  margin: 0;
  padding: 0; }

a {
  color: #666;
  text-decoration: none; }
  a:hover {
    color: #4FDA8C; }

input {
  font: 16px/26px "Raleway", sans-serif; }

body {
  color: #666;
  background-color: #f1f2f2;
  font: 16px/26px "Raleway", sans-serif; }

.form-wrap {
  background-color: #fff;
  width: 320px;
  margin: 3em auto;
  box-shadow: 0px 1px 8px #BEBEBE;
  -webkit-box-shadow: 0px 1px 8px #BEBEBE;
  -moz-box-shadow: 0px 1px 8px #BEBEBE; }
  .form-wrap .tabs {
    overflow: hidden; }
    .form-wrap .tabs h3 {
      float: left;
      width: 50%; }
      .form-wrap .tabs h3 a {
        padding: 0.5em 0;
        text-align: center;
        font-weight: 400;
        background-color: #e6e7e8;
        display: block;
        color: #666; }
        .form-wrap .tabs h3 a.active {
          background-color: #fff; }
  .form-wrap .tabs-content {
    padding: 1.5em; }
    .form-wrap .tabs-content div[id$="tab-content"] {
      display: none; }
    .form-wrap .tabs-content .active {
      display: block !important; }
  .form-wrap form .input {
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    color: inherit;
    font-family: inherit;
    padding: .8em 0 10px .8em;
    border: 1px solid #CFCFCF;
    outline: 0;
    display: inline-block;
    margin: 0 0 .8em 0;
    padding-right: 2em;
    width: 100%; }
  .form-wrap form .button {
    width: 100%;
    padding: .8em 0 10px .8em;
    background-color: #28A55F;
    border: none;
    color: #fff;
    cursor: pointer;
    text-transform: uppercase; }
    .form-wrap form .button:hover {
      background-color: #4FDA8C; }
  .form-wrap form .checkbox {
    visibility: hidden;
    padding: 20px;
    margin: .5em 0 1.5em; }
    .form-wrap form .checkbox:checked + label:after {
      -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
      filter: alpha(opacity=100);
      opacity: 1; }
  .form-wrap form label[for] {
    position: relative;
    padding-left: 20px;
    cursor: pointer; }
    .form-wrap form label[for]:before {
      content: '';
      position: absolute;
      border: 1px solid #CFCFCF;
      width: 17px;
      height: 17px;
      top: 0px;
      left: -14px; }
    .form-wrap form label[for]:after {
      -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
      filter: alpha(opacity=0);
      opacity: 0;
      content: '';
      position: absolute;
      width: 9px;
      height: 5px;
      background-color: transparent;
      top: 4px;
      left: -10px;
      border: 3px solid #28A55F;
      border-top: none;
      border-right: none;
      -webkit-transform: rotate(-45deg);
      -moz-transform: rotate(-45deg);
      -o-transform: rotate(-45deg);
      -ms-transform: rotate(-45deg);
      transform: rotate(-45deg); }
  .form-wrap .help-text {
    margin-top: .6em; }
    .form-wrap .help-text p {
      text-align: center;
      font-size: 14px; }

@import "compass/css3";

@keyframes rotate-to-right {
  from {
    transform: rotate(0deg);
  }
  to { 
    transform: rotate(360deg);
  }
}

@-webkit-keyframes rotate-to-left {
  from {
    transform: rotate(360deg);
  }
  to { 
    transform: rotate(0deg);
  }
}

body {
  padding: 2em;
  font-family: 'Helvetica Neue', Arial;
}

h1 {
  margin-bottom: 1em;
  font-size: 1.5em;
  line-height: 1em;
}

p {
  font-size: 1em;
  line-height: 1.3;
}

#close {
    @size: 50px;
	height: @size;
  width: @size;
  position: relative;
	box-sizing: border-box;
	line-height: @size;
	display: inline-block;
}

#close:hover {
        float:right;
        display:inline-block;
        padding:2px 5px;
        background:#ccc;
    color:#fff;
    }
<!-- for click on button and modal pop up
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body BACKGROUND="<c:url value='/resources/images/pg-bg.jpg'/>"  />
 <div data-role="main" class="ui-content">
      <div class="form-wrap">
		<div class="tabs">
		<div>
		 <span id='close'>x</span>
		
			<h3 class="signup-tab"><a class="active" href="#signup-tab-content">Sign Up</a></h3>
			<h3 class="login-tab"><a href="#login-tab-content">Login</a></h3>
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				<form:form class="signup-form" action="adduser" commandName="user" method="post" id="signup">
				<fieldset>
					<form:input type="email" path="user_email" class="input"  autocomplete="off" placeholder="Email" required="true"/>
					<form:input type="text" path="user_id" class="input"  autocomplete="off" placeholder="Username" required="true"/>
					<form:input  class="input" path="password"  type="password" title="Minimum 8 characters, one number, one uppercase and one lowercase letter" pattern="(?=^.{8,}$)((?=.*d)|(?=.*W+))(?![.n])(?=.*[A-Z])(?=.*[a-z]).*" autocomplete="off" placeholder="Password" required="true"/>
					<input type="submit" class="button" value="SignUp">
					</fieldset>
				</form:form><!--.login-form-->
		
			</div><!--.signup-tab-content-->
		
			<div id="login-tab-content">
				<form:form class="login-form" action="checkuser" method="post" commandName="user">
					<form:input type="text" path="user_id" class="input"  autocomplete="off" placeholder="Username" required="true"/>
					<form:input type="password" path="password" class="input"  autocomplete="off" placeholder="Password" required="true"/>
					
					<!-- <input type="checkbox" class="checkbox" id="remember_me">
					<label for="remember_me">Remember me</label>
 -->					
					<input type="submit" class="button" value="Login">
					<div align="center">
				
        <c:if test="${isAdmin==true}">
        <%@ page buffer="5000kb" %>
        <jsp:forward page="inventorycontrol.jsp"/>
        </c:if> 
         <c:if test="${isAdmin==false}">
        <%@ page buffer="5000kb" %>
        <jsp:forward page="test3.jsp"/>
        </c:if> 
        
    </div>
   
				</form:form><!--.login-form-->
	
				
			</div><!--.login-tab-content-->
	
		</div><!--.tabs-content-->

	</div><!--.form-wrap-->

    </div>
    
    </div>
    
<jsp:include page="jsfiles.jsp"></jsp:include>
<script>
jQuery(document).ready(function($) {
	tab = $('.tabs h3 a');

	tab.on('click', function(event) {
		event.preventDefault();
		tab.removeClass('active');
		$(this).addClass('active');

		tab_content = $(this).attr('href');
		$('div[id$="tab-content"]').removeClass('active');
		$(tab_content).addClass('active');
		$('div[id$="tab-content"]').bind('dialogclose', function(event) {
			alert('closed');
			});
	});
});</script>
<script>
window.onload = function(){
    document.getElementById('close').onclick = function(){
        this.parentNode.parentNode.parentNode
        .removeChild(this.parentNode.parentNode);
        return false;
    };
};
</script>


</body>
</html>