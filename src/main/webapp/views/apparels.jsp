<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="userNavbar.jsp" %>
<%@include file="/CSS/shopCss.jsp" %>
<%@include file="/CSS/apparelsCss.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>apparel.co</title>
</head>
<body>
	<section class="apparel">
	<div class="banner">
		<div class="one">
			<p><span>Creating</span><br>You</p>
		</div>
		<div class="two">
			<a href="/mshop">
				<div><p>Shop for <span>Men</span></p></div>
				
			</a>
			<a href="/fshop">
				<div><p>Shop for <span>Women</span></p></div>
			</a>
		</div>
	</div>
	<div class="head"><h1>Men's Clothing</h1></div>
	<div class="male-filter">
		<c:forEach var="male" items="${male}">
			<a href="/mshop/bycategory?id=${male.getId()}"><div class="category-card male">${male.getCategoryName()}</div></a>
			
		</c:forEach>
	
	</div>
	<div class="head"><h1>women's Clothing</h1></div>
	<div class="female-filter">
		<c:forEach var="female" items="${female}">
			<a href="/fshop/bycategory?id=${female.getId()}"><div class="category-card female">${female.getCategoryName()}</div></a>
			
		</c:forEach>
	
	</div>
	<footer>
	
	</footer>
	</section>

</body>
</html>