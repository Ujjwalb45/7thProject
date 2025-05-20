<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome for icons -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<style>
/* Icons Container */
.icons-container {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
	background-color: navy; /* Light background color */
	border-bottom: 1px solid #ddd; /* Optional border */
	position: fixed; /* Fixed position */
	top: 0; /* Stick to the top */
	left: 0; /* Stick to the left */
	right: 0; /* Stick to the right */
	z-index: 1000; /* Ensure it's above other content */
}

.icons-container .icon {
	font-size: 22px;
	cursor: pointer;
	transition: color 0.3s;
	line-height: 1;
}

.icons-container .icon:hover {
	color: purple;
}

.icons-container img {
	vertical-align: middle; /* Align image icons with font icons */
}

.profile-image-preview {
	width: 0px;
	height: 60px;
	border-radius: 50%;
	object-fit: cover;
	cursor: pointer;
}

a.icon {
	color: inherit; /* Inherit the text color from its parent */
	text-decoration: none; /* Remove underline */
}

/* Icon Hover Effect */
a.icon:hover {
	color: purple; /* Change the color on hover */
}

/* Add padding to the body to avoid overlapping content */
body {
	padding-top: 70px; /* Adjust to the height of the fixed header */
}

/* Search Bar Styles */
.search-bar-container {
	flex-grow: 1; /* Take up remaining space */
	margin: 0 20px;
	display: flex;
}

.search-bar-container input[type="text"] {
	flex: 1;
	padding: 8px 12px;
	border: 1px solid #ddd;
	border-radius: 20px;
	font-size: 16px;
	outline: none;
	transition: all 0.3s;
}

.search-bar-container input[type="text"]:focus {
	border-color: purple;
	box-shadow: 0 0 5px purple;
}

.search-bar-container button {
	background: none;
	border: none;
	color: gray;
	font-size: 18px;
	cursor: pointer;
	margin-left: -35px; /* Overlap the search icon on the input */
}

.search-bar-container button:hover {
	color: purple;
}
</style>
<script>
	function onConfirm() {
		var value = confirm("Do you really want to Logout?");
		return value;
	}
</script>
</head>
<body>
	<div class="icons-container">
		<!-- Home and Message Icons -->
		<div>
			<a href="zpost.jsp" class="icon"> <i class="fas fa-home"></i> <!-- Home Icon -->
			</a> <a href="message.jsp"><i class="fas fa-envelope icon ms-4"></i></a>
			<a href="DisplayUserDetailsController?action=userDetails"
				class="icon ms-4"> <!-- Profile Icon --> <img
				src="images/icon.jpg" alt="Hardcore Icon" class="ms-2"
				style="width: 25px; height: 25px; object-fit: cover; border-radius: 50%;">
			</a>


			<!-- Message Icon -->
		</div>

		<!-- Search Bar -->
		<div class="search-bar-container">
			<form action="SearchController" method="GET">
				<input id="search" type="text" name="query"
					placeholder="Search here..." required aria-label="Search">
				<button type="submit">
					<i class="fas fa-search"></i>
					<!-- Search Icon -->
				</button>
			</form>
		</div>

		<!-- Notification and Profile Icons -->
		<div>

			<a href="notification.jsp"><i class="fas fa-bell icon"></i></a> <a
				href="photos.jsp"> <img
				src="imaged/upload/${sessionScope.imageName}" alt="${userName}"
				class="profile-image-preview icon ms-4" title="${userName}"
				style="width: 60px; height: 60px; border-radius: 50%; object-fit: cover;">
			</a><a href="LogOutController?action=logout" class="btn btn-danger"
				onclick="return onConfirm();">Logout</a>
		</div>
	</div>

	<!-- Content Section -->


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
