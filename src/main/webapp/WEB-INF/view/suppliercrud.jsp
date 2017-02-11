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
<title>Supplier CRUD Operation</title>
</head>
<body>
	<h2>Insert Category</h2>
	<form:form method="post" action="${cp}/adminsupplieradd" commandName="supplier">
		<table>
			<tr>
				<td>Supplier ID</td>
				<td><form:input path="supplier_id" /></td>
			</tr>
			<tr>
				<td>Supplier Name</td>
				<td><form:input path="supplier_name" /></td>
			</tr>
			<tr>
				<td>Supplier Address</td>
				<td><form:input path="supplier_address" /></td>
			</tr>
			<tr>
				<td>Supplier Contact</td>
				<td><form:input path="supplier_contact" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Insert Supplier" /></td>
			</tr>

		</table>
	</form:form>
	<hr>
	<h2>Insert Category</h2>
	<form:form method="post" action="${cp}/adminsupplierupdate"
		commandName="supplier">
		<table>
			<tr>
				<td>Supplier ID</td>
				<td><form:input path="supplier_id" /></td>
			</tr>
			<tr>
				<td>Supplier Name</td>
				<td><form:input path="supplier_name" /></td>
			</tr>
			<tr>
				<td>Supplier Address</td>
				<td><form:input path="supplier_address" /></td>
			</tr>
			<tr>
				<td>Supplier Contact</td>
				<td><form:input path="supplier_contact" /></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Update Supplier" /></td>
			</tr>

		</table>
	</form:form>
	<hr>
	<form:form method="post" action="${cp}/adminsupplierdelete"
		commandName="supplier">
		<table>
			<tr>
				<td>Supplier ID</td>
				<td><form:input path="supplier_id" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Delete Supplier" /></td>
			</tr>
		</table>
	</form:form>
	<hr>
	
	<h3>Supplier Details</h3>
	<c:if test="${!empty supplierlist}">
		<table class="data">
			<tr>
				<th>Supplier ID</th>
				<th>Supplier NAME</th>
				<th>Supplier ADDRESS</th>
				<th>Supplier CONTACT</th>
			</tr>
			<c:forEach items="${supplierlist}" var="sup">
				<tr>
					<td>${sup.supplier_id}</td>
					<td>${sup.supplier_name}</td>
					<td>${sup.supplier_address}</td>
					<td>${sup.supplier_contact}</td>

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