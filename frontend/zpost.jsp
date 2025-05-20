<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Social Media UI</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #e9eff1;
	margin: 0;
	padding: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh; /* To make sure it takes full height */
}

.container {
	width: 100%;
	max-width: 600px;
	margin: 0 auto;
	display: flex;
	flex-direction: column;
	align-items: center; /* Center the posts */
}

.post {
	background-color: white;
	border-radius: 12px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	padding: 20px;
	transition: transform 0.2s;
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	width: 100%; /* Make all posts the same width */
	max-width: 500px; /* Set a uniform max width */
}

.post img {
	width: 100%; /* Make images take the full width of the post */
	height: auto;
	border-radius: 10px;
	margin-top: 10px;
}

.post-header {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
	margin-bottom: 15px;
}

.post-header img {
	border-radius: 50%;
	width: 50px;
	height: 50px;
	margin-right: 10px;
}

.post-footer {
	display: flex;
	justify-content: center; /* Center the button */
	width: 100%;
}

.btn {
	background-color: #f0f2f5;
	border: none;
	padding: 10px 15px;
	border-radius: 5px;
	cursor: pointer;
	font-weight: bold;
	color: #555;
	transition: background-color 0.3s;
}

.btn:hover {
	background-color: #d3d3d3;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="container">
		<div class="post">
			<div class="post-header">
				<img src="images/shradda.jpg" alt="Profile Image 1"> <strong>Shradda</strong>
				<span>2m ago</span>
			</div>
			<img src="images/shraddha1.jpg" alt="Meme Image 1">
			<p>Caption</p>
			<div class="post-footer">
				<button class="btn">Love</button>

			</div>
		</div>

		<div class="post">
			<div class="post-header">
				<img src="images/rs45.jpg" alt="Profile Image 2"> <strong>Rohit
					Sharma</strong> <span>Yesterday at 5:16 PM</span>
			</div>
			<img src="images/captain.jpg" alt="Meme Image 2">
			<p>Caption</p>
			<div class="post-footer">
				<button class="btn">Love</button>
			</div>
		</div>

		<div class="post">
			<div class="post-header">
				<img src="images/shradda.jpg" alt="Profile Image 1"> <strong>Shradda</strong>
				<span>2m ago</span>
			</div>
			<img src="images/shraddha1.jpg" alt="Meme Image 1">
			<p>Caption</p>
			<div class="post-footer">
				<button class="btn">Love</button>

			</div>
		</div>

		<div class="post">
			<div class="post-header">
				<img src="images/shradda.jpg" alt="Profile Image 1"> <strong>Shradda</strong>
				<span>2m ago</span>
			</div>
			<img src="images/shraddha1.jpg" alt="Meme Image 1">
			<p>Caption</p>
			<div class="post-footer">
				<button class="btn">Love</button>

			</div>
		</div>
	</div>

</body>
</html>