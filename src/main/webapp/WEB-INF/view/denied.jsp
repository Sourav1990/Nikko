<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<html>
    <body>
     
        <h1 id="banner">Unauthorized Access !!</h1>
     
        <hr />
   <form:form method="POST" action="${cp}/accessdenied">
        <c:if test="${not empty error}">
            <div style="color:red">
                Seems you aren't logged in,nps you have a chance !!<br /> 
                Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </div>
        </c:if>
     
        <p class="message">Access denied!</p>
        </form:form>
    </body>
</html>