<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shop</title>
<%@include file="/CSS/navbarCss.jsp" %>
<%@include file="/CSS/adminCategoriesCss.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<nav class="navbar">
			<a href="/admin_dashboard"><h2>apparrel.co</h2></a>
			<a href="">Logout</a>
	</nav>
	<section class="categories">
		<div class="cat_container">
			<a class="add_category" href="/admin/categories/add">Add_Category</a>
			<table class="table"  cellpadding="15em" cellspacing="0px" >
				<tr>
					<th>SN</th>
					<th>Categories</th>
					<th>Gender</th>
					<th></th>
					<th></th>
				</tr>
				
				<c:forEach var="categories" items="${categories}">
				<tr>
					<td>${categories.getId()}</td>
					<td>${categories.getCategoryName()}</td>
					<td class="gender">${categories.getGender().getGender()}</td>
					<td class="delete_category">
						<a href="/delete_category?id=${categories.getId()}" >Delete</a>
					</td>
					<td class="edit_category">
						<a href="/edit_category?id=${categories.getId()}">Edit</a>
					</td>
				</tr>
				</c:forEach>
				
			</table>
		</div>
	</section>
</body>
</html>