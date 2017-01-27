<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<body>
<c:if test="${empty loggedInUserID }">
<li><a href="checkuser"><span class="glyphicon glyphicon-user"></span>Login</a></li>
</c:if>
</body>