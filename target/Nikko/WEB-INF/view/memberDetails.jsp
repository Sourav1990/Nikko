<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
 
	<body>
		<div class="content">
			<fieldset>
				<legend>Billing Details</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${cp}/test3">Home</a>
				<sf:form modelAttribute="billingAddress">
					<sf:label path="address1">Address Line 1:</sf:label>
					<sf:input path="address1" /><br />
					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address1')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="address2">Address Line 2: </sf:label>
					<sf:input path="address2" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address2')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="city">City: </sf:label>
					<sf:input path="city" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="state">State: </sf:label>
					<sf:input path="state" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="country">Country: </sf:label>
					<sf:input path="country" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('country')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<hr>
					<legend>Shipping Details</legend>
					<sf:label path="shp_address1">Address Line 1:</sf:label>
					<sf:input path="shp_address1" /><br />
					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('shp_address1')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="shp_address2">Address Line 2: </sf:label>
					<sf:input path="shp_address2" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('shp_address2')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="shp_city">City: </sf:label>
					<sf:input path="shp_city" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('shp_city')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="shp_state">State: </sf:label>
					<sf:input path="shp_state" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('shp_state')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="shp_country">Country: </sf:label>
					<sf:input path="shp_country" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('shp_country')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_submit" type="submit" value="Submit" /><br />
				</sf:form>
			</fieldset>
		</div>
	</body>
</html>