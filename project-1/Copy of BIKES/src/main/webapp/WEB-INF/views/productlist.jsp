<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body
{background-image:url('http://www.freedwallpapers.com/wp-content/uploads/2017/05/oRFaf7.jpg');
}


h1 {
    color: white;
    text-align: center;
}
</style>
<script>
$(document).ready(function(){
var searchCondition='${searchCondition}';
$('.table').DataTable({
"lengthMenu":[ [ 3, 5, 7, -1],[3, 5, 7, "All"] ],
"oSearch" :{
 "sSearch":searchCondition
  }
})
});
</script>

</head>
<body>

<h1>LIST OF BIKES</h1>
<div class="container">
<table Class="table table-striped">
<thead>

<tr><th>IMAGE</th><th>Product Name</th><th>price</th><th>Category</th><th>Action</th></tr>
</thead>
<tbody>
<c:forEach items="${products}" var="p">
<c:url value="/all/product/viewproduct/${p.id}" var="viewUrl"></c:url>
<c:url value="/resources/images/${p.id}.jpg" var="imageUrl"></c:url>
<td><img src="${imageUrl }" height="50" width="50"></td>
<td><a href="${viewUrl}">${p.productName}</a></td><td>${p.price}</td><td>${p.category.categoryName }</td>
<td><a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span></a>
<security:authorize access="hasRole('ROLE_ADMIN')">
<c:url value="/admin/product/deleteproduct/${p.id }" var="deleteUrl"></c:url>
<a href="${deleteUrl }"><span class="glyphicon glyphicon-trash"></span></a>
<c:url value="/admin/product/geteditform/${p.id }" var="editUrl"></c:url>
<a href="${editUrl }"><span class="glyphicon glyphicon-pencil"></span></a>
</security:authorize>

</td>
</c:forEach>
</tbody>
</table>
</div>

</body>
</html>
<%@ include file="footer.jsp"%>
