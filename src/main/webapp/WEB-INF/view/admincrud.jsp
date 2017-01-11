<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
    <style type="text/css">
    .h2{
    font-color:red;
    }
    </style>
        <title>Spring 3 hibernate integration example on www.howtodoinjava.com</title>
    </head>
    <body>
    <h2>Employee Management Screen : Spring 3 hibernate integration example on www.howtodoinjava.com</h2>
    <form:form method="post" action="add" commandName="userForm">
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
                    <td colspan="2" align="center"><input type="submit" value="Register" /></td>
                </tr>        </tr>
    </table> 
    </form:form>
    <h3>Categories</h3>
    <c:if  test="${!empty categories}">
    <table class="data">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Telephone</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${categories}" var="cat">
        <tr>
            <td>${cat.category_id} </td>
            <td>${cat.category_name}</td>
            <td>${cat.category_description}</td>
            
        </tr>
    </c:forEach>
    </table>
    </c:if>
    <form:form method="post" action="update" commandName="userForm">
      <h2>
    Update details of Category
    </h2>
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
                    <td colspan="2" align="center"><input type="submit" value="Update" /></td>
                </tr>       
    </table> 
    </form:form>
     <form:form method="post" action="delete" commandName="userForm">
      <h2>
    Update details of Category
    </h2>
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
                    <td colspan="2" align="center"><input type="submit" value="Delete" /></td>
                </tr>       
    </table> 
    </form:form>
    </body>
</html>