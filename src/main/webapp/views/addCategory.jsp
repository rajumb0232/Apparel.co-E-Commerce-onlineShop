<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shop</title>
<%@include file="/CSS/navbarCss.jsp" %>
<%@include file="/CSS/addCategoryCss.jsp" %>
</head>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
	<nav class="navbar">
			<a href="/admin_dashboard"><h2>apparrel.co</h2></a>
			<a href="">Logout</a>
	</nav>
	<section class="add_category">
	
	<form:form action="/save_category"  modelAttribute="categoryDTO" class="form">
		<h1>Add Category</h1>
		<form:input path="categoryName"  class="input-field" placeholder="Enter Category Name" required="required" />
		<div class="select-div">
		<form:label path="genderId" cssClass="label">Select Gender:</form:label>
		<form:select path="genderId" class="genderid" cssClass="genders">
		<c:forEach var="genders" items="${genders}" >
						<option value="${genders.getGenderId()}" >
							${genders.getGender()}
						</option>
		</c:forEach>
		</form:select>
		</div>
		<input type="submit" class="btn submit" value="Add"/>
	</form:form>
	</section>
</body>
</html>