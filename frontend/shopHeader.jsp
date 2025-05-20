<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marriage Store</title>
<link rel="icon" href="shopImages/icon1.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
body {
	font-family: Arial, sans-serif;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 1rem;
	background-color: #96DFCE;
	color: black;
	padding: 10px 20px;
}

.logo {
	font-size: 1.5rem;
	font-weight: bold;
}

.nav {
	display: flex;
	align-items: center;
	gap: 20px;
	color:;
}

.search-form {
	display: flex;
	align-items: center;
	background: white;
	border-radius: 25px;
	padding: 5px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	transition: 0.3s ease-in-out;
}

.search-form:hover {
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

.search-input {
	border: none;
	outline: none;
	padding: 10px;
	border-radius: 20px;
	font-size: 16px;
	flex: 1;
}

.search-btn {
	background: #F8D5DB;
	border: none;
	color: white;
	padding: 8px 12px;
	border-radius: 50%;
	cursor: pointer;
	font-size: 18px;
	transition: 0.3s;
}

.search-btn:hover {
	background: #96DFCE;
	transform: scale(1.1);
}
</style>
</head>
<body>

	<!-- Header Section -->
	<header class="header">
		<div class="logo">
			<a href="shopHome.jsp"> Marriage Store</a>
		</div>
		<nav class="nav">
			<a href="FrontPage.jsp">Front Page</a> <a href="shopHome.jsp"
				class="link">Home</a> <a href="shopProducts.jsp" class="link">Products</a>
			<a href="shopCart.jsp" class="link">Cart</a>

			<!-- Search Form -->
			<form action="" method="GET" class="search-form">
				<input type="text" name="query" placeholder="Search products..."
					class="search-input">
				<button type="submit" class="search-btn">Search</button>
			</form>

		</nav>
	</header>


	<!-- Content goes here -->
	<div>
		<!-- You can add the main content of your website here -->
	</div>



</body>
</html>
