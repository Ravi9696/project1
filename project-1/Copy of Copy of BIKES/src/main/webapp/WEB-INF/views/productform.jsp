<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" Content="text/html; charset=ISO-8859-1">
<title>insert</title>
<style>
body
{
background-image:url('http://www.motorcycle-usa.com/photogallerys/633734197850182879Eslick-action-SBF1.jpg?378220');
 color: DarkGoldenRod;
 }
h3
{color:Tomato;
}


</style>
</head>

<body >
<form:form action="saveproduct" method="post" modelAttribute="product" enctype="multipart/form-data">
<center><table>
<tr>
<td>
<div class="form-group">
<form:hidden path="id" class="form-control"/>
</div></td></tr>
<tr>
<td>
<div class ="form-group">
<h3>Enter Product Name</h3>
<form:input path="productName" class="form-control"/>
</div></td></tr><tr><td>
<div class ="form-group">
<h3>Enter Price</h3>
<form:input path="price" class="form-control"/>
</div></td></tr><tr><td>
<div class ="form-group">
<h3>Enter Quantity</h3>
<form:input path="Quantity" class="form-control"/>
</div></td></tr><tr><td>
<div class ="form-group">
<h3>Enter Description</h3>
<form:textarea path="Description" class="form-control" rows="4" cols="50"/>
</div></td></tr>
<tr><td><div class= "form-group">
<h3>upload image</h3>
<input type="file" name="image">
</dv></td></tr></table>
</center>
<div class ="form-group">
<h3>Select Category</h3>
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