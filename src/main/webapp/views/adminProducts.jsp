<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online shop</title>
<%@include file="/CSS/navbarCss.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/CSS/adminProductsCss.jsp" %>
</head>
<body>
	<nav class="navbar">
			<a href="/admin_dashboard"><h2>apparrel.co</h2></a>
			<a href="" class="admin-logout">Logout</a>
	</nav>
	<section class="products">
		<div class="filter">
				<div><a href="/admin/products/add">Add_Product</a></div>
				<h3>Categories</h3>
			<ul class="filters">
				<li><a href="/admin/products">All Products</a></li>	
				<c:forEach var="categories" items="${categories}">
					<li><a href="/admin/products/bycategory?id=${categories.getId()}">${categories.getCategoryName()}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="product-cards">
			<c:forEach var="products" items="${products}">

				<div class="product-card">
					<div class="manage">
							<a href="/admin/product/edit?id=${products.getProductId()}">&#128393;</a>					
							<a href="/admin/product/delete?id=${products.getProductId()}">&#128465;</a>
					</div>
					<div class="image-sec">
						<img alt="" src="/product_images/${products.getProductImageName()}"  >
					</div>
					<div class="desc-sec">
						<h3>${products.getProductId()}</h3>
						<h2>${products.getProductName()}</h2>
						<h3>Sizes available: ${products.getProductSizes()}</h3>
						<div>
							<h3><span>${products.getPrice()}</span>/-</h3>
							<h4><span>${products.getQuantity()}</span> No's</h4>
						</div>
					</div>
					
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>