<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shop</title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/CSS/addProductCss.jsp" %>
<%@include file="/CSS/navbarCss.jsp" %>
</head>
<body>
	<nav class="navbar">
			<a href="/admin_dashboard"><h2>apparrel.co</h2></a>
			<a href="">Logout</a>
	</nav>
	<section class="add-product">
		<form:form action="/admin/products/add" modelAttribute="productDTO" enctype="multipart/form-data" class="add-product-form">
			<div class="sec-one">
				<form:hidden path="productId"/>
				<form:input path="productName" placeholder="Enter Product Name:" required="required" class="product-name"/><br>
				<form:label path="categoryId" class="label">Select Category: </form:label>
				<form:select path="categoryId" class="categories" >
					<c:forEach var="categories" items="${categories}" >
						<option value="${categories.getId()}" >
							${categories.getCategoryName()}
						</option>
					</c:forEach>				
				</form:select>
				<form:label path="genderId" class="label">Select Gender: </form:label>
				<form:select path="genderId" class="categories">
					<c:forEach var="genders" items="${genders}">
					<form:option value="${genders.getGenderId()}">
						${genders.getGender()}
					</form:option>
					</c:forEach>
				</form:select>
				<form:label path="productSizes" cssClass="label" >Select Available Sizes:</form:label><br>
				<form:checkboxes items="${productSizes}" path="productSizes" delimiter=" " cssClass="checkbox"/>
				<div class="price-quantity">
					<div>
					<form:label path="price" class="label">Price:</form:label><br>
					<form:input path="price"  required="required" class="price"/>				
					</div>
					<div>
					<form:label  path="quantity" class="label">Stock Quantity:</form:label><br>
					<form:input path="quantity" required="required" class="quantity"/>					
					</div>
				</div>
					<a class="back" href="/admin/products">&#11164; Back</a>
			</div>
			<div class="sec-two">
				<div class="accept-file">
						<input type="file" name="productImageName" accept="image/jpeg, image/png" id="file" />
						<label for="file" class="upload-image">Select Photo</label>
				</div>
				<form:label  path="description" class="label">Product Description:</form:label><br>
				<form:textarea path="description" class="description"/>
					<input type="hidden" name="imgName" value="${productDTO.getProductImageName()}">
					<input type="submit" value="Save Product" class="submit">
			</div>
		</form:form>
	</section>
</body>
</html>