<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shop</title>
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Poppins:wght@200;300;400&display=swap" rel="stylesheet">
<%@include file="/CSS/adminDashboardCss.jsp" %>
<%@include file="/CSS/navbarCss.jsp" %>
</head>
<body>
	<nav class="navbar">
			<a href="/admin_dashboard"><h2>apparrel.co</h2></a>
			<a href="">Logout</a>
	</nav>
	<section class="dashboard">
		<div class="greetings">
			<h1>Welcome Admin</h1>
			<h3>keep in track and manage all your products here!</h3>
		</div>
		<div class="admin_cards">
			<div class="card category_card">
				<h2>Categories</h2>
				<p>Manage all your categories here.</p>
				<a href="admin/categories">Manage</a>
			</div>
			<div class="card products_card">
				<h2>Products</h2>
				<p>Manage all your products here.</p>
				<a href="/admin/products">Manage</a>
			</div>
		</div>
	</section>
</body>
</html>