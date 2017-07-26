<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('http://s1.picswalls.com/wallpapers/2014/08/16/beautiful-road-backgrounds_07231423_201.jpg');
}
</style>

</head>
<body >

<b>Details about Bike</b>
<table>
<tr>
<td>
<c:url  value="/resources/images/${product.id }.jpg" var="imageUrl"></c:url>
<img src="${imageUrl }" height="300" width="300">
</td></tr>
<tr>
<td>product Name:</td><td>${product.productName }</td>
</tr>
<tr>
<td>Price:</td><td>${product.price }</td>
</tr>
<tr><td>Description: </td><td>${product.description }</td></tr>
<tr>
<td>Quantity:</td><td>${product.quantity }</td>
</tr></table>
<c:url value="/all/product/getallproducts" var="url1"></c:url>
<a href="${url1}"><center><h1>BACK TO PRODUCT LIST</h1></center></a><br>



</body>
</html>
<%@ include file="footer.jsp" %>
