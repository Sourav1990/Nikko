<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
.h2 {
	font-color: red;
}
</style>
<title>User CRUD Operation</title>
</head>
<body>
	<h2>Insert User</h2>
	<form:form method="post" action="adduser" commandName="user">
		<table>
			<tr>
				<td>User ID</td>
				<td><form:input path="user_id" /></td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><form:input path="user_name" /></td>
			</tr>
			<tr>
				<td>User Password</td>
				<td><form:input path="user_password" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Register" /></td>
			</tr>
			</tr>
		</table>
	</form:form>
	<form:form method="post" action="adduser" commandName="user">
		<table>
			<tr>
				<td>User ID</td>
				<td><form:input path="user_id" /></td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><form:input path="user_name" /></td>
			</tr>
			<tr>
				<td>User Password</td>
				<td><form:input path="user_password" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Register" /></td>
			</tr>
			</tr>
		</table>
	</form:form>
	<h3>User Details</h3>
	<c:if test="${!empty users}">
		<table class="data">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>PASSWORD</th>
			</tr>
			<c:forEach items="${users}" var="use">
				<tr>
					<td>${use.user_id}</td>
					<td>${use.user_name}</td>
					<td>${use.user_password}</td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
	<form:form method="post" action="updateuser" commandName="user">
		<h2>Update details of User</h2>
		<table>
			<tr>
				<td>User ID</td>
				<td><form:input path="user_id" /></td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><form:input path="user_name" /></td>
			</tr>
			<tr>
				<td>User Description</td>
				<td><form:input path="user_password" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Update" /></td>
			</tr>
		</table>
	</form:form>
	<h3>User Details</h3>
	<c:if test="${!empty users}">
		<table class="data">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>PASSWORD</th>
			</tr>
			<c:forEach items="${users}" var="use">
				<tr>
					<td>${use.user_id}</td>
					<td>${use.user_name}</td>
					<td>${use.user_password}</td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
	<form:form method="post" action="deleteuser" commandName="user">
		<h2>Delete details of User</h2>
		<table>
			<tr>
				<td>Category ID</td>
				<td><form:input path="user_id" /></td>
			</tr>
			<tr>
				<td>Category Name</td>
				<td><form:input path="user_name" /></td>
			</tr>
			<tr>
				<td>Category Description</td>
				<td><form:input path="user_password" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Delete" /></td>
			</tr>
		</table>
	</form:form>
	<h3>User Details</h3>
	<c:if test="${!empty users}">
		<table class="data">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>PASSWORD</th>
			</tr>
			<c:forEach items="${users}" var="use">
				<tr>
					<td>${use.user_id}</td>
					<td>${use.user_name}</td>
					<td>${use.user_password}</td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>