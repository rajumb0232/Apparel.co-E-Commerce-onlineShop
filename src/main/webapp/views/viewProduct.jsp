<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="userNavbar.jsp" %>
<%@include file="/CSS/shopCss.jsp" %>
<%@include file="/CSS/viewProductCss.jsp" %>
<title>online shop</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
</head>
<body>
	<section class="viewProduct">
		<div class="product">
			<div class="product-image">
				<img alt="product_image" src="/product_images/${product.getProductImageName()}">
			</div>
			<div class="product-desc">
				<h1>${product.getProductName()}</h1>
				<p>${product.getDescription()}</p>
				<form:checkboxes items="${productSizes}" path=""/>
				<h2>${product.getPrice()}</h2>
			</div>
		</div>
	</section>
      
</body>
</html>