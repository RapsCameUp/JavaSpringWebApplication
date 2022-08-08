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
						aria-current="page" href="admin.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="getAllProducts">Products</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">users</a></li>
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
					<h5 class="float-start">All Users</h5>
					<a href="#" class="float-end btn btn-dark btn-sm">
						Add New User </a>
				</div>
				<hr />
			</div>


			<form action="getuserByEmail" method="get">
				<div class="row mt-4">
					<div class="col-sm-3">
						<input type="email" name="email" class="form-control form-control-sm" placeholder="search user by email" required/>
					</div>
					<div class="col-sm-1">
						<button type="submit" class="btn btn-sm btn-dark mb-3">
							Search</button>
					</div>
				</div>
			</form>

${requestScope.msg}


			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Name</th>
										<th scope="col">Surname</th>
										<th scope="col">Email</th>
										<th scope="col">Role</th>
										<th scope="col">Status</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${requestScope.ViewAllUsers}" var="user">
										<tr>
											<td>${user.name}</td>
											<td>${user.surname}</td>
											<td>${user.email}</td>
											<td>${user.role}</td>
											
											<td><c:choose>
										    <c:when test="${user.status=='1'}">
										        <button class="btn btn-sm btn-info">Active</button>
										    </c:when>    
										    <c:otherwise>
										        <button class="btn btn-sm btn-warning">Inactive</button>
										    </c:otherwise>
										</c:choose>
										</td>


										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		
		
		</div>
	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>