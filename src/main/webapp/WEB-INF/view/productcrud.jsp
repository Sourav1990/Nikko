<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="cp" value="${pageContext.request.contextPath}" />
<html>
<head>
<jsp:include page="admin.jsp"></jsp:include>
<style type="text/css">
.h2 {
	font-color: red;
}

</style>
</head>

<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<form:form method="POST" action="${cp}/adminadd" modelAttribute="product"
					enctype="multipart/form-data">
					<table>
						<tr>


						</tr>

						<c:if test="${!empty product}">
							<tr>
								<td><form:label path="product_id">
										<springtags:message text="Product Id" />
									</form:label></td>
								<td><form:input path="product_id" /> <form:hidden
										path="product_id" pattern=".{3,10}" required="true"
										title="id should contains 3 to 10characters" /> <span
									class="glyphicon glyphicon-lock "></span></td>
							</tr>
						</c:if>


						<tr>

							<td><form:label path="product_name">Product Name</form:label></td>
							<td><form:input path="product_name" /></td>
							<%-- 			<td><form:errors path="productName" cssclass="error"></form:errors></td> --%>
						</tr>
						<tr>
							<td><form:label path="product_description">Product Description</form:label></td>
							<td><form:input path="product_description" /></td>
						</tr>

						<tr>
							<td><form:label path="product_price">Product Price</form:label></td>
							<td><form:input path="product_price" /></td>
						</tr>
						<tr>
						<td><form:label path="file">
								<springtags:message text="Choose Image" />
							</form:label></td>
						<td><form:input path="file" type="file" /></td>

					</tr>
						<tr>
							<td><br> <c:if test="${!empty product.product_name}">
									<input type="submit"
										value="<springtags:message text="Update Product"/>" />
								</c:if></td>
							<td><br> <c:if test="${empty product.product_name}">
									<input type="submit"
										value="<springtags:message text="Insert Product"/>" />
								</c:if></td>

						</tr>
						<tr>

							<td><strong>Category :</strong></td>
							<td><strong><spring:select path="category_id"
										items="${categorylist}" itemValue="category_id" itemLabel="category_name">
									</spring:select>
									<td><spring:errors path="category_id" cssClass="error" /></td>
						</tr>

						<tr>

							<td><strong>Supplier :</strong></td>
							<td><spring:select path="supplier_id"
									items="${supplierlist}" itemValue="supplier_id"
									itemLabel="supplier_name" />
							<td><spring:errors path="supplier_id" cssClass="error" /></td>
						</tr>

					</table>
				</form:form>
				
			</div>
			<!-- col end -->

			<div class="col-sm-2"></div>
			<!-- col end -->

		</div>
		<!-- row end -->


		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8 ">
				<div class="table-responsive">
					<table class="table table-hover table-condensed cf table2">
						<thead class="cf">
							<tr>
								<th></th>
								<th>ProductID</th>
								<th>Product Name</th>
								<th>Product Price</th>
								<th>Product Description</th>
								<th>Category Name</th>
								<th>Supplier Name</th>
								<th>Edit Product</th>
								<th>Delete Product</th>
							</tr>
						</thead>
						<c:if test="${not empty productlist}">
							<tbody>
								<c:forEach items="${productlist}" var="data">

									<tr>
										<td><img alt=""
											src="${cp}/resources/images/productimages/${data.product_id}.jpg"
											height="100px" width="100px" /></td>
										<td class="active">${data.product_id}</td>
										<td align="left">${data.product_name}</td>
										<td>${data.product_description}</td>
										<td>${data.product_price}</td>
										

									</tr>
								</c:forEach>
							</tbody>
						</c:if>
						<c:if test="${empty productlist}">
				There are no product yet. 
				</c:if>
					</table>

				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<form:form method="POST" action="${cp}/adminupdate" modelAttribute="product"
					enctype="multipart/form-data">
					<table>
						<tr>


						</tr>

						<c:if test="${!empty product}">
							<tr>
								<td><form:label path="product_id">
										<springtags:message text="Product Id" />
									</form:label></td>
								<td><form:input path="product_id" /> <form:hidden
										path="product_id" pattern=".{3,10}" required="true"
										title="id should contains 3 to 10characters" /> <span
									class="glyphicon glyphicon-lock "></span></td>
							</tr>
						</c:if>


						<tr>

							<td><form:label path="product_name">Product Name</form:label></td>
							<td><form:input path="product_name" /></td>
							<%-- 			<td><form:errors path="productName" cssclass="error"></form:errors></td> --%>
						</tr>
						<tr>
							<td><form:label path="product_description">Product Description</form:label></td>
							<td><form:input path="product_description" /></td>
						</tr>

						<tr>
							<td><form:label path="product_price">Product Price</form:label></td>
							<td><form:input path="product_price" /></td>
						</tr>
						<tr>
						<td><form:label path="file">
								<springtags:message text="Choose Image" />
							</form:label></td>
						<td><form:input path="file" type="file" /></td>

					</tr>
						<tr>
							<td><br> 
									<input type="submit"
										value="<springtags:message text="Update Product"/>" />
								</td>
							
						</tr>
						<tr>

							<td><strong>Category :</strong></td>
							<td><strong><spring:select path="category_id"
										items="${categorylist}" itemValue="category_id" itemLabel="category_name">
									</spring:select>
									<td><spring:errors path="category_id" cssClass="error" /></td>
						</tr>

						<tr>

							<td><strong>Supplier :</strong></td>
							<td><spring:select path="supplier_id"
									items="${supplierlist}" itemValue="supplier_id"
									itemLabel="supplier_name" />
							<td><spring:errors path="supplier_id" cssClass="error" /></td>
						</tr>

					</table>
				</form:form>
				
			</div>
			<!-- col end -->

			<div class="col-sm-2"></div>
			<!-- col end -->

		</div>
		<!-- row end -->


		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8 ">
				<div class="table-responsive">
					<table class="table table-hover table-condensed cf table2">
						<thead class="cf">
							<tr>
								<th></th>
								<th>ProductID</th>
								<th>Product Name</th>
								<th>Product Description</th>
								<th>Product Price</th>
							</tr>
						</thead>
						<c:if test="${not empty productlist}">
							<tbody>
								<c:forEach items="${productlist}" var="data">

									<tr>
										<td><img alt=""
											src="${cp}/resources/images/productimages/${data.product_id}.jpg"
											height="100px" width="100px" /></td>
										<td class="active">${data.product_id}</td>
										<td align="left">${data.product_name}</td>
										<td>${data.product_description}</td>
										<td>${data.product_price}</td>
										

									</tr>
								</c:forEach>
							</tbody>
						</c:if>
						<c:if test="${empty productlist}">
				There are no product yet. 
				</c:if>
					</table>

				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<form:form method="POST" action="${cp}/admindelete" modelAttribute="product"
					enctype="multipart/form-data">
					<table>
						<tr>


						</tr>

						<c:if test="${!empty product}">
							<tr>
								<td><form:label path="product_id">
										<springtags:message text="Product Id" />
									</form:label></td>
								<td><form:input path="product_id" /> <form:hidden
										path="product_id" pattern=".{3,10}" required="true"
										title="id should contains 3 to 10characters" /> <span
									class="glyphicon glyphicon-lock "></span></td>
							</tr>
						</c:if>
						<tr>
							<td><br> 
									<input type="submit"
										value="<springtags:message text="Delete Product"/>" />
								</td>
							
						</tr>
						<tr>

							<td><strong>Category :</strong></td>
							<td><strong><spring:select path="category_id"
										items="${categorylist}" itemValue="category_id" itemLabel="category_name">
									</spring:select>
									<td><spring:errors path="category_id" cssClass="error" /></td>
						</tr>

						<tr>

							<td><strong>Supplier :</strong></td>
							<td><spring:select path="supplier_id"
									items="${supplierlist}" itemValue="supplier_id"
									itemLabel="supplier_name" />
							<td><spring:errors path="supplier_id" cssClass="error" /></td>
						</tr>

					</table>
				</form:form>
				
			</div>
			<!-- col end -->

			<div class="col-sm-2"></div>
			<!-- col end -->

		</div>
		<!-- row end -->


		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8 ">
				<div class="table-responsive">
					<table class="table table-hover table-condensed cf table2">
						<thead class="cf">
							<tr>
								<th></th>
								<th>ProductID</th>
								<th>Product Name</th>
								<th>Product Price</th>
								<th>Product Description</th>
								<th>Category Name</th>
								<th>Supplier Name</th>
								<th>Edit Product</th>
								<th>Delete Product</th>
							</tr>
						</thead>
						<c:if test="${not empty productlist}">
							<tbody>
								<c:forEach items="${productlist}" var="data">

									<tr>
										<td><img alt=""
											src="${cp}/resources/images/productimages/${data.product_id}.jpg"
											height="100px" width="100px" /></td>
										<td class="active">${data.product_id}</td>
										<td align="left">${data.product_name}</td>
										<td>${data.product_description}</td>
										<td>${data.product_price}</td>
										

									</tr>
								</c:forEach>
							</tbody>
						</c:if>
						<c:if test="${empty productlist}">
				There are no product yet. 
				</c:if>
					</table>

				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

<tr>
			<a href="${cp}/inventory"><td colspan="2" align="center"><input type="submit"
					value="Back" /></td></a>	
			</tr>
</body>
</html>