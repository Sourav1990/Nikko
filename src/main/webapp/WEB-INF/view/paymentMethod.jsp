<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="content">
			<fieldset>
				<a href="${cp}/test3">Home</a><br /><br />
				<sf:form modelAttribute="billingAddress"><br />
<h2>Choose Payment Method</h2>
<input type="radio">Cash On Delivery
  <input name="_eventId_submit" type="submit" value="PLACE ORDER" /><br />
  </sf:form>
  </fieldset>
  </div>
 
</body>
</html>