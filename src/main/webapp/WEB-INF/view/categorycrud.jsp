<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="admin.jsp"></jsp:include>
<html>
<head>
<style type="text/css">
.h2 {
	font-color: red;
}
</style>
<title>Category CRUD Operation</title>
</head>
<body>
	<h2>Insert Category</h2>
	<form:form method="post" action="${cp}/admincatadd" commandName="category">
		<table>
			<tr>
				<td>Category ID</td>
				<td><form:input path="category_id" /></td>
			</tr>
			<tr>
				<td>Category Name</td>
				<td><form:input path="category_name" /></td>
			</tr>
			<tr>
				<td>Category Description</td>
				<td><form:input path="category_description" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Insert Category" /></td>
			</tr>

		</table>
	</form:form>
	<form:form method="post" action="${cp}/admincatupdate"
		commandName="category">
		<table>
			<tr>
				<td>Category ID</td>
				<td><form:input path="category_id" /></td>
			</tr>
			<tr>
				<td>Category Name</td>
				<td><form:input path="category_name" /></td>
			</tr>
			<tr>
				<td>Category Description</td>
				<td><form:input path="category_description" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Update Category" /></td>
			</tr>

		</table>
	</form:form>
	<form:form method="post" action="${cp}/admincatdelete"
		commandName="category">
		<table>
			<tr>
				<td>Category ID</td>
				<td><form:input path="category_id" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Delete Category" /></td>
			</tr>
			</tr>
		</table>
	</form:form>
	<h3>Category Details</h3>
	<c:if test="${!empty categorylist}">
		<table class="data">
			<tr>
				<th>Category ID</th>
				<th>Category NAME</th>
				<th>Category Description</th>
			</tr>
			<c:forEach items="${categorylist}" var="cat">
				<tr>
					<td>${cat.category_id}</td>
					<td>${cat.category_name}</td>
					<td>${cat.category_description}</td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
	<tr>
			<a href="${cp}/inventory"><td colspan="2" align="center"><input type="submit"
					value="Back" /></td></a>	
			</tr>
</body>
</html>