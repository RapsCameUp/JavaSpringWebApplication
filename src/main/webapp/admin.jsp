<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="getAllProducts">Products</a>
        </li>
     <li class="nav-item">
          <a class="nav-link" href="getAllUsers">users</a>
        </li>
             <li class="nav-item">
          <a class="nav-link" href="#">Purchase Reports</a>
        </li>
      </ul>
      <form class="d-flex">
      <a class="btn btn-outline-light" type="button" href="index.jsp">Logout</a>
      </form>
    </div>
  </div>
</nav>

<div class="container py-5">



  <div class="row">
    <div class="col-lg-12 p-5">
      <h5> <i class="fa fa-tachometer" aria-hidden="true"></i> Admin Dashboard</h5>
      <hr />
    </div>
  </div>
  <div class="row">
    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
      <a class="text-decoration-none" href="getAllProducts">
        <div class="card p-3 shadow bg-purple text-center border-0">
          <div class="card-body">
            <i class="fa fa-bookmark-o fa-2x" aria-hidden="true"></i>
            <hr />
            <p class="card-title lead">View All Products</p>
          </div>
        </div>
      </a>
    </div>
    
     <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
      <a class="text-decoration-none" href="AddNewProduct.jsp">
        <div class="card p-3 shadow bg-purple text-center border-0">
          <div class="card-body">
            <i class="fa fa-bookmark-o fa-2x" aria-hidden="true"></i>
            <hr />
       		<p class="card-title lead">Add New Product</p>
          </div>
        </div>
      </a>
    </div>

    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
      <a class="text-decoration-none" href="getAllUsers">
        <div class="card p-3 shadow bg-purple text-center border-0">
          <div class="card-body">
            <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
            <hr />
            <p class="card-title lead">View All Users</p>
          </div>
        </div>
      </a>
    </div>
    
     <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
      <a class="text-decoration-none" href="getReports">
        <div class="card p-3 shadow bg-purple text-center border-0">
          <div class="card-body">
            <i class="fa fa-bookmark-o fa-2x" aria-hidden="true"></i>
            <hr />
            <p class="card-title lead"> Purchase Reports</p>
          </div>
        </div>
      </a>
    </div>

  </div>
</div>

<footer class="footer fixed-bottom">
  <div class="row text-center p-3">
    <p class="small text-muted">RapsCameUp@2022</p>
  </div>
</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>