<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" Content="text/html; charset=ISO-8859-1">
<title>insert</title>
</head>

<body style="background-color:powderblue;">
<form:form action="saveproduct" method="post" modelAttribute="product" enctype="multipart/form-data">
<table>
<tr>
<td>
<div class="form-group">
<form:hidden path="id" class="form-control"/>
</div></td></tr>
<tr>
<td>
<div class ="form-group">
Enter Product Name
<form:input path="productName" class="form-control"/>
</div></td></tr><tr><td>
<div class ="form-group">
Enter Price
<form:input path="price" class="form-control"/>
</div></td></tr><tr><td>
<div class ="form-group">
Enter Quantity
<form:input path="Quantity" class="form-control"/>
</div></td></tr><tr><td>
<div class ="form-group">
Enter Description
<form:input path="Description" class="form-control"/>
</div></td></tr>
<tr><td><dv class= "form-group">
upload image
<input type="file" name="image">
</dv></td></tr><br>
<div class ="form-group">
Select Category
<c:forEach items="${categories}" var="c">
<form:radiobutton path="category.id" value="${c.id}"/>${c.categoryName}
</c:forEach>
</div>


<tr>
<td>

<div class ="form-group">
<input type="submit" value="Add product"></div></td></tr></table>
</form:form>
</body>
</html>




<%@ include file="footer.jsp"%>