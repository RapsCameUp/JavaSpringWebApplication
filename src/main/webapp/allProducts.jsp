<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RER Sporty Shoes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Sporty Shoes</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="getAllProducts">Products</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="getAllUsers">users</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Purchase
							Reports</a></li>
				</ul>
				<form class="d-flex">
					<a class="btn btn-outline-light" type="button" href="index.jsp">Logout</a>
				</form>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 mt-5">
					<h5 class="float-start">
						All products
					</h5>
					<a  href="AddNewProduct.jsp" class="float-end btn btn-dark btn-sm">
					Add New Product
					</a>
				</div>
				<hr />
			</div>


			<form action="getProductsByCategory" method="get">
				<div class="row">
					<div class="col-sm-2">
						<select class="form-select form-select-sm" name="category">
							<option selected disabled>Select Category</option>
							<option value="Sneaker">Sneaker</option>
							<option value="Sandal">Sandal</option>
						</select>
					</div>
					<div class="col-sm-1">
					<button type="submit" class="btn btn-sm btn-dark mb-3"> Search</button>
					</div>
				</div>
			</form>


			<div class="row">
				<c:forEach items="${requestScope.ViewAllProducts}" var="product">
					<div class="col-sm-3">
						<div class="card">
							<img src="${product.image}" class="card-img-top" alt="..."
								height="300">
							<div class="card-body">
								<p class="card-text text-center">
									<b><c:out value="${product.name}"></c:out></b>
									<br>
									<c:out value="$ ${product.price}"></c:out>
								</p>
								<a class="btn btn-sm btn-dark w-100">Update</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>