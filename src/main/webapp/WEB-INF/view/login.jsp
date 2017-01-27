<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Login Form</title>
<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
</head>
<body>

 <h2>${msg }</h2>
   <form:form method="post" action="adduser" commandName="user">
		<table>
			<tr>
				<td>User ID</td>
				<td><form:input path="user_id" /></td>
			</tr>
			<tr>
				<td>User Password</td>
				<td><form:input path="user_password" /></td>
			</tr>
			<tr>
				<td>User Email</td>
				<td><form:input path="user_email" /></td>
			</tr>
			<tr>
				<td>User Role</td>
				<td><form:input path="role" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Register" /></td>
			</tr>
		</table>
</form:form>

</body>
</html>