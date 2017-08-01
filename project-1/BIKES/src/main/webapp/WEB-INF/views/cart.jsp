<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<div> 
<c:url value ="/cart/clearcart/${cart.id} " var="clear"></c:url>
<a href="${clear }" class="btn- btn-danger" pull-left>
<span class="glyphcon glyphcon-remove-sign"></span>Clear cart</a>
<a href="<c:url value="/cart/order/$(cart.id)"></c:url>" class="btn btn-succsses pull-right">
<span class="glyph glypicon-shoping-cart"></span>check out</a>
<table class=table table-striped">
<thead>
<tr> <th> name</th><th>quantity</th><th>price</th><th>remove</th></tr>
</thead>
<c:set var="grandTotal" value="0"></c:set>
<c:forEach items="S{cart.cartItems}" var="cartItem">
<tr>
<td>${cartItem.product.productName }</td>
<td> ${cartItem.quantity }</td>
<td>${cartItem.totalprice }</td>
<c:url value="/cart/removecartItem/${cartItem.cartItemId }" var="remove"></c:url>
<td> <a href="${remove }" class ="label label-danger" pull-left>
<c:set var="grandTotal" value="${cartItem.totelPrice+grandTotal}" ></c:set>
<span class="glyphicon glypicon-remove"></span>remove</a>
</td>
<td></td>
</tr>
</c:forEach></table>
total price:$(grandTotal)
</div>
</div>

</body>
</html>