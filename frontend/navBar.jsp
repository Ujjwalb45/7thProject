<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation Bar</title>
<!-- Bootstrap CSS -->
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">

<style>
.navbar-custom {
	background-color: navy; /* Purple background color */
}

.navbar-custom .navbar-brand, .navbar-custom .nav-link {
	color: #fff; /* White text color for navigation items */
}

.navbar-custom .nav-link:hover {
	text-decoration: underline; /* Underline links on hover */
}

.navbar-custom .navbar-toggler-icon {
	filter: invert(1); /* White toggler icon for dark background */
}

.navbar-logo {
	width: 40px; /* Set the logo size */
	height: auto;
	margin-right: 10px; /* Space between logo and text */
}
/* Make navbar static at the top */
.navbar-custom {
	position: sticky;
	top: 0;
	z-index: 1030; /* Ensure it stays above other content */
}

/* Loading Screen */
#loadingScreen {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
	display: none; /* Hidden by default */
	justify-content: center;
	align-items: center;
	z-index: 9999; /* Ensure it's on top of all other content */
}

.spinner-border {
	width: 3rem;
	height: 3rem;
	border-width: 0.4em;
	color: #ffffff;
}
</style>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-custom">
		<div class="container-fluid">
			<a class="navbar-brand d-flex align-items-center"
				href="FrontPage.jsp"> <img src="images/heart.gif"
				alt="ShuvaBibhaha Logo" class="navbar-logo"> Bibhaha
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<%
					Boolean isLogin = (Boolean) request.getAttribute("isLogin");
					if (isLogin != null && isLogin) {
					%>
					<li class="nav-item"><a class="nav-link"
						href="LogOutController?action=logout">Logout</a></li>
					<%
					} else {
					%>
					<li class="nav-item"><a class="nav-link" href="#"
						data-bs-toggle="modal" data-bs-target="#loginModal">Login</a></li>
					<%
					}
					%>

					<li class="nav-item"><a class="nav-link" href="shopHome.jsp">Shop</a></li>
					<li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
					<li class="nav-item"><a class="nav-link" href="help.jsp">Help</a></li>
				</ul>
			</div>
		</div>
	</nav>



	<!-- Optional Login Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1"
		aria-labelledby="loginModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="loginModalLabel">Login to Your
						Account</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="LoginController" method="POST">
						<div class="mb-3">
							<label for="email" class="form-label">Email</label> <input
								type="text" class="form-control" id="email" name="loginEmail"
								placeholder="Enter email" required>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label> <input
								type="text" class="form-control" id="password"
								name="loginPassword" placeholder="Enter password" required>
						</div>
						<%
						String invalid = (String) request.getAttribute("invalid");
						%>
						<%
						if (invalid != null) {
						%>
						<div class="alert alert-danger" role="alert"><%=invalid%></div>
						<%
						}
						%>

						<button type="submit" class="btn btn-primary w-100">Login</button>

						<!-- Forgot Password Link -->
						<div class="mt-3 text-center">
							<a href="forgotPassword.jsp" class="text-decoration-none">Forgot
								Password?</a>
						</div>

						<!-- Don't Have an Account? Sign Up Link -->
						<div class="mt-2 text-center">
							<p>
								Don't have an account? <a href="generalDetails.jsp"
									class="text-decoration-none" id="signUpBtn">Sign Up</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Loading Screen -->
	<div id="loadingScreen">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<script>
	window.onload = function() {
	    // Check if the user clicked "Sign Up" before the page reload
	    if (localStorage.getItem('skipLoginModal') !== 'true') {
	        var loginModal = new bootstrap.Modal(document.getElementById('loginModal'));
	        loginModal.show();
	    } else {
	        // Remove the flag after the page loads once
	        localStorage.removeItem('skipLoginModal');
	    }
	};

	// Set a flag when "Sign Up" is clicked
	document.getElementById('signUpBtn').addEventListener('click', function() {
	    localStorage.setItem('skipLoginModal', 'true');
	    
	    //document.querySelector("form").addEventListener("submit", function() {
	      //  sessionStorage.setItem("skipLoginModal", "true");
	});
	</script>
	<script>
		// Show Loading Screen when "Sign Up" link is clicked
		document.getElementById('signUpBtn').addEventListener('click',
				function() {
					showLoading(); // Show loading screen
					setTimeout(function() {
						window.location.href = 'generalDetails.jsp'; // Redirect to FrontPage.jsp after 1 second
					}, 1000); // 1 second delay
				});

		// Function to show loading screen
		function showLoading() {
			document.getElementById('loadingScreen').style.display = 'flex';
		}

		// Function to hide loading screen (optional, you can call this if needed)
		function hideLoading() {
			document.getElementById('loadingScreen').style.display = 'none';
		}

		document.getElementById('togglePassword').addEventListener(
				'click',
				function() {
					const passwordInput = document.getElementById('password');
					const passwordIcon = document
							.getElementById('passwordIcon');

					// Toggle password visibility
					if (passwordInput.type === 'password') {
						passwordInput.type = 'text';
						passwordIcon.classList.remove('bi-eye');
						passwordIcon.classList.add('bi-eye-slash');
					} else {
						passwordInput.type = 'password';
						passwordIcon.classList.remove('bi-eye-slash');
						passwordIcon.classList.add('bi-eye');
					}
				});
	</script>
</body>
</html>
