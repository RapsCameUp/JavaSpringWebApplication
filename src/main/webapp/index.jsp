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

	<div class="container-fluid">
		<div class="container">
			<div class="row d-flex justify-content-center align-items-center">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-dark text-white" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">
						${requestScope.msg}
							<div class="mb-md-5 mt-md-4 pb-5">

								<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
								<p class="text-white-50 mb-5">Please enter your login and
									password!</p>

								<form action="UserLogin" method="post">

									<div class="form-outline form-white mb-4">
										<input type="email" id="email" name="email"
											class="form-control" /> <label
											class="form-label" for="email">Email</label>
									</div>

									<div class="form-outline form-white mb-4">
										<input type="password" id="password" name="password"
											class="form-control" /> <label
											class="form-label" for="password">Password</label>
									</div>

									<p class="small mb-5 pb-lg-2">
										<a class="text-white-50" href="forgotpassword.jsp">Forgot password?</a>
									</p>

									<button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
								</form>

							</div>

							<div>
								<p class="mb-0">
									Don't have an account? <a href="register.jsp"
										class="text-white-50 fw-bold">Register</a>
								</p>
							</div>

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