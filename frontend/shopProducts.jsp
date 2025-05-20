<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Products - Marriage Store</title>
<link rel="icon" href="shopImages/icon1.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
body {
	font-family: Arial, sans-serif;
}

.container {
	padding: 2rem;
}

.sectionTitle {
	font-size: 2rem;
	margin-bottom: 1.5rem;
	color: #8B4513;
	text-align: center;
}

.productGrid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 1.5rem;
	padding: 1rem;
}

.productCard {
	border: 1px solid #ddd;
	padding: 1rem;
	text-align: center;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.productName {
	font-size: 1.2rem;
	margin-top: 1rem;
}

.productPrice {
	font-size: 1.1rem;
	margin-top: 0.5rem;
	color: #8B4513;
}

.product-grid, .category-grid, .testimonial-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 1rem;
	padding: 1rem;
}

.category-card {
	border: 1px solid #ddd;
	padding: 1rem;
	text-align: center;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.category-image {
	width: 170px;
    height: 240px; /* Fixed height */
	object-fit: cover;
	border-radius: 8px;
}

.category-card h3 {
	font-size: 1rem; /* Adjust the text size for a more compact look */
	margin-top: 0.5rem;
}

.category-card p {
	font-size: 1.1rem;
	margin-top: 0.5rem;
	color: #8B4513;
}

.footer {
	background-color: #8B4513;
	color: #fff;
	padding: 2rem;
	text-align: center;
}

.footerContent {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
	margin-bottom: 1rem;
}

.footerSection {
	margin: 1rem;
}

.footerTitle {
	font-size: 1.2rem;
	margin-bottom: 0.5rem;
}

.footerList {
	list-style: none;
	padding: 0;
}

.footerBottom {
	border-top: 1px solid #fff;
	padding-top: 1rem;
}
</style>
</head>
<body>

	<%@ include file="shopHeader.jsp"%>

	<!-- Main Content -->
	<div class="container">
		<!-- Products Grid -->
		<h2 class="sectionTitle">All Products</h2>
		<div class="productGrid">
			<!-- Hardcoded Products -->
			<div class="category-card">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0cc0QCqJc_0nNptXE9VtY1bnpxN7jUW8IVQ&s"
					alt="Mangalsutra" class="category-image" />
				<h3>Mangalsutra</h3>
				<p>₹1500</p>
			</div>
			<div class="category-card">
				<img
					src="https://cdn.magzter.com/1558276106/1668007613/articles/HFjkbNwpi1668078803948/WHEN-MRUNAL-THAKUR-MADE-US-FALL-IN-LOVE-WITH-SAREES-AS-SITA.jpg"
					alt="Saree" class="category-image" />
				<h3>Saree</h3>
				<p>₹15000</p>
			</div>
			<div class="category-card">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkvXgIpZSkrXrPHS6fKmDHJ3rRPx4EsNv03w&s"
					alt="Bangles" class="category-image" />
				<h3>Bangles</h3>
				<p>₹500</p>
			</div>
			<div class="category-card">
				<img
					src="https://5.imimg.com/data5/EV/ZA/JR/SELLER-109881361/men-cotton-formal-suit-500x500.jpg"
					alt="Belzer" class="category-image" />
				<h3>Blezer</h3>
				<p>₹10000</p>
			</div>


			<div class="productCard">
				<img src="https://placehold.co/300x200" alt="Gold Earrings"
					class="productImage" />
				<h3 class="productName">Gold Earrings</h3>
				<p class="productPrice">₹5000</p>
			</div>

			<div class="productCard">
				<img src="https://placehold.co/300x200" alt="Wedding Invitations"
					class="productImage" />
				<h3 class="productName">Wedding Invitations</h3>
				<p class="productPrice">₹300</p>
			</div>

			<div class="productCard">
				<img src="https://placehold.co/300x200" alt="Pooja Thali"
					class="productImage" />
				<h3 class="productName">Pooja Thali</h3>
				<p class="productPrice">₹800</p>
			</div>

			<div class="productCard">
				<img src="https://placehold.co/300x200" alt="Groom's Sherwani"
					class="productImage" />
				<h3 class="productName">Groom's Sherwani</h3>
				<p class="productPrice">₹12000</p>
			</div>

			<div class="productCard">
				<img src="https://placehold.co/300x200" alt="Mehndi Designs"
					class="productImage" />
				<h3 class="productName">Mehndi Designs</h3>
				<p class="productPrice">₹150</p>
			</div>
		</div>
	</div>

	<%@ include file="shopFooter.jsp"%>

</body>
</html>
