<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hindu Marriage Store</title>
<link rel="icon" href="shopImages/icon1.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
body {
	font-family: Arial, sans-serif;
}

table {
	width: 80%;
	border-collapse: collapse;
	margin: 20px auto;
}

th, td {
	padding: 10px;
	text-align: left;
	border: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

.hero {
	background-image: url('https://via.placeholder.com/1200x400');
	background-size: cover;
	background-position: center;
	height: 400px;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #fff;
	text-align: center;
}

.hero-content {
	background-color: rgba(0, 0, 0, 0.5);
	padding: 2rem;
	border-radius: 10px;
}

.hero-title {
	font-size: 2.5rem;
	margin-bottom: 1rem;
}

.hero-subtitle {
	font-size: 1.2rem;
	margin-bottom: 1.5rem;
}

.hero-button {
	background-color: #8B4513;
	color: #fff;
	border: none;
	padding: 0.8rem 2rem;
	font-size: 1rem;
	border-radius: 5px;
	cursor: pointer;
}

.section {
	padding: 2rem;
	text-align: center;
}

.section-title {
	font-size: 2rem;
	margin-bottom: 1.5rem;
	color: #8B4513;
}

.product-grid, .category-grid, .testimonial-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 1rem;
	padding: 1rem;
}
.section {
    padding: 1rem; /* Reduced padding */
    text-align: center;
}

.section-title {
    font-size: 1.5rem; /* Smaller font size for the title */
    margin-bottom: 1rem;
}

.category-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(120px, 1fr)); /* Adjusted grid */
    gap: 1rem; /* Reduced gap between categories */
}

.category-card {
    border: 1px solid #ddd;
    padding: 0.5rem; /* Reduced padding */
    text-align: center;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.category-card img {
    width: 100px;  /* Reduced image width */
    height: 100px; /* Fixed height */
    object-fit: cover;
    border-radius: 8px;
}

.category-card h3 {
    font-size: 0.9rem; /* Smaller font size for category names */
    margin-top: 0.5rem;
}

.category-card p {
	font-size: 1.1rem;
	margin-top: 0.5rem;
	color: #8B4513;
}

body {
	font-family: Arial, sans-serif;
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
	<!-- Header Section 
	<div>
		<h1 style="text-align: center;">Welcome to Hindu Marriage Store</h1>
	</div>

	<!-- Hero Section -->


	<!-- Featured Products Section -->
	<div class="section">
    <h2 class="section-title">Featured Products</h2>
    <div class="product-grid">
        <div class="category-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0cc0QCqJc_0nNptXE9VtY1bnpxN7jUW8IVQ&s"
                alt="Mangalsutra" class="category-image" />
            <h3>Mangalsutra</h3>
            <p>₹1500</p>
            <form action="AddToCartServlet" method="post">
                <input type="hidden" name="name" value="Mangalsutra">
                <input type="hidden" name="price" value="1500">
                <button type="submit" class="btn btn-info">Add to Cart</button>
            </form>
        </div>

        <div class="category-card">
            <img src="https://cdn.magzter.com/1558276106/1668007613/articles/HFjkbNwpi1668078803948/WHEN-MRUNAL-THAKUR-MADE-US-FALL-IN-LOVE-WITH-SAREES-AS-SITA.jpg"
                alt="Saree" class="category-image" />
            <h3>Saree</h3>
            <p>₹15000</p>
            <form action="AddToCartServlet" method="post">
                <input type="hidden" name="name" value="Saree">
                <input type="hidden" name="price" value="15000">
                <button type="submit" class="btn btn-info">Add to Cart</button>
            </form>
        </div>

        <div class="category-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkvXgIpZSkrXrPHS6fKmDHJ3rRPx4EsNv03w&s"
                alt="Bangles" class="category-image" />
            <h3>Bangles</h3>
            <p>₹500</p>
            <form action="AddToCartServlet" method="post">
                <input type="hidden" name="name" value="Bangles">
                <input type="hidden" name="price" value="500">
                <button type="submit" class="btn btn-info">Add to Cart</button>
            </form>
        </div>

        <div class="category-card">
            <img src="https://5.imimg.com/data5/EV/ZA/JR/SELLER-109881361/men-cotton-formal-suit-500x500.jpg"
                alt="Belzer" class="category-image" />
            <h3>Blezer</h3>
            <p>₹10000</p>
            <form action="AddToCartServlet" method="post">
                <input type="hidden" name="name" value="Belzer">
                <input type="hidden" name="price" value="10000">
                <button type="submit" class="btn btn-info">Add to Cart</button>
            </form>
        </div>
    </div>
</div>


	<!-- Categories Section -->
	<div class="section">
		<h2 class="section-title">Shop by Category</h2>
		<div class="category-grid">
			<!-- Categories (Hardcoded) -->
			<div class="category-card">
				<img
					src="https://media.istockphoto.com/id/1277517088/photo/fancy-designer-antique-golden-bracelets-for-woman-fashion.jpg?s=612x612&w=0&k=20&c=n49O0S5rIgzxJX5bU1YjwRHfou0DYPcmsv-N5JAAM14="
					alt="Jewelry" />
				<h3>Jewelry</h3>
			</div>
			<div class="category-card">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOnIgVahJdVb1KzDqnTIvtOB-KFn6z62heLQ&s"
					alt="Clothing" />
				<h3>Clothing</h3>
			</div>
			<div class="category-card">
				<img src="https://rusticandmain.com/cdn/shop/articles/e91382988de7f859233009a877936c91_800x.jpg?v=1680814332" alt="Accessories" />
				<h3>Accessories</h3>
			</div>
			<div class="category-card">
				<img src="https://media.licdn.com/dms/image/v2/C4D12AQHOEPffrkN5rw/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1520105009849?e=2147483647&v=beta&t=IOdY26r47YBq4byC8kCMRjY793Z7SSUnbuOdBCnWxOI" alt="Decorations" />
				<h3>Decorations</h3>
			</div>
		</div>
	</div>

	


	<!-- Footer Section -->
	<jsp:include page="shopFooter.jsp" />
	
	

	
</body>
</html>
