<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
<div align="center">
<table border="0" width="90%">
        <h2>Spring MVC Form Validation Demo - Login Form</h2>
        
	<form:form method="POST" action="checkuser" commandName="user">
	
		<tr>
                    <td >User ID </td>
                    <td align="left" width="40%"><form:input path="user_id" size="30"/></td>
                    
                </tr>
                <tr>
                    <td><form:label path="user_password">Password</form:label> </td>
                    <td><form:password path="user_password" size="30"/></td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td align="center"><input type="submit" value="Login"/></td>
                    <td></td>
                </tr>
	</form:form>
	</table>
	</div>

    <div align="center">
        <c:if test="{isAdmin==true}">
         ${loggedInUser }
        <%@ include file="admincrud.jsp" %>
        </c:if> 
    </div>
</body>
</html>