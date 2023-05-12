<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="userNavbar.jsp" %>
<%@include file="/CSS/shopCss.jsp" %>
<title>online shop</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<section class="shop">
		<div class="filter-sec">
			<h3>Categories</h3>
			<ul class="filters">
				<li><a href="/fshop/allcategories">All Products</a></li>	
				<c:forEach var="female" items="${female}">
					<li><a href="/fshop/bycategory?id=${female.getId()}">${female.getCategoryName()}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="product-view-sec">
		<c:forEach var="products" items="${products}">
			<a href="/shop/product/view?id=${products.getProductId()}">
				<div class="product-card">
					<div class="image-sec">
						<img alt="" src="/product_images/${products.getProductImageName()}"  >
					</div>
					<div class="desc-sec">
						<h2>${products.getProductName()}</h2>
						<h4>Sizes available: ${products.getProductSizes()}</h4>
						
						<h3><span>${products.getPrice()}</span>/-</h3>
					</div>
					
			 	</div>
			</a>
			</c:forEach>
		</div>
	</section>
</body>
</html>