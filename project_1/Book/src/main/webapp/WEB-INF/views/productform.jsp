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
<form:form action="saveproduct" method="post" modelAttribute="product">
<form:hidden path="id"/>
Enter Product Name<form:input path="productName"/><br><br><br><br><br>
Enter Price<form:input path="price"/><br><br><br><br><br>
Enter Quantity<form:input path="quantity"/><br><br><br><br><br>
Enter Description<form:textarea path="description"/><br><br><br>
<input type="submit" value="Add product">
</form:form>
</body>
</html>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>







<%@ include file="footer.jsp"%>