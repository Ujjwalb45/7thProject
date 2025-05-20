<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${sessionScope.name}</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<!-- Link to external stylesheet (Bootstrap for responsive design) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Link to Font Awesome for icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<style>
/* Custom CSS for Profile */
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f4f7f6;
	color: #333;
	margin: 0;
	padding: 0;
}

.profile {
	max-width: 900px;
	margin: 30px auto;
	padding: 30px;
	background-color: #fff;
	border-radius: 15px;
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease;
}

.profile:hover {
	transform: translateY(-5px);
	box-shadow: 0 6px 25px rgba(0, 0, 0, 0.15);
}

.profile img {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	margin-bottom: 20px;
	border: 4px solid #007bff;
	transition: transform 0.3s ease, border-color 0.3s ease;
}

.profile img:hover {
	transform: scale(1.1);
	border-color: #0056b3;
}

.profile h2 {
	font-size: 2.2rem;
	font-weight: 700;
	color: #007bff;
	text-align: center;
	margin-bottom: 20px;
}

.profile p {
	font-size: 1.1rem;
	margin-bottom: 15px;
	line-height: 1.6;
}

.profile h3 {
	font-size: 1.6rem;
	font-weight: 600;
	color: #3c3c3c;
	margin-top: 25px;
	margin-bottom: 15px;
}

.profile button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 12px 25px;
	font-size: 1rem;
	border-radius: 8px;
	cursor: pointer;
	transition: background-color 0.3s ease, transform 0.3s ease;
}

.profile button:hover {
	background-color: #0056b3;
	transform: translateY(-3px);
}

.profile .details-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 20px;
	margin-top: 20px;
}

.profile .details-grid p {
	background-color: #f9f9f9;
	padding: 15px;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.profile .details-grid p:hover {
	transform: translateY(-5px);
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.profile .contact-info {
	display: flex;
	align-items: center;
	gap: 10px;
	margin-top: 20px;
}

.profile .contact-info i {
	font-size: 1.2rem;
	color: #007bff;
}

@media (max-width: 768px) {
	.profile {
		padding: 20px;
	}
	.profile h2 {
		font-size: 1.8rem;
	}
	.profile p {
		font-size: 1rem;
	}
	.profile .details-grid {
		grid-template-columns: 1fr;
	}
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="profile">
		<div class="d-flex align-items-center justify-content-between">
			<h2>Profile of ${user.user.firstName} ${user.user.lastName}</h2>
			<form action="FriendController" method="post">
				<input type="hidden" name="friendId" value="${user.user.id}">
				<input type="hidden" name="userId" value="${id}">
				<button type="submit"><i class="fas fa-user-plus"></i> Add Friend</button>
			</form>
		</div>
		<img src="${user.user.imagePath}" alt="${user.user.firstName} Profile Picture" />
		<p><strong>Age:</strong> ${user.user.age}</p>
		<p><strong>Religion:</strong> ${user.user.religion}</p>
		<p><strong>Country:</strong> ${user.user.country}</p>

		<h3>About Me:</h3>
		<p>I am a tech enthusiast, love traveling, and enjoy spending time with my family. I am looking for a life partner who shares similar values and interests, and someone who is supportive and caring.</p>

		<h3>Personal Details</h3>
		<div class="details-grid">
			<p><strong>Height:</strong> ${user.physicalDetails.height}</p>
			<p><strong>Weight:</strong> ${user.physicalDetails.weight}</p>
			<p><strong>Eye Color:</strong> ${user.physicalDetails.eyeColor}</p>
			<p><strong>Skin Tone:</strong> ${user.physicalDetails.skinColor}</p>
			<p><strong>Blood Type:</strong> ${user.physicalDetails.bloodType}</p>
			<p><strong>Job:</strong> ${user.physicalDetails.job}</p>
			<p><strong>Education:</strong> ${user.physicalDetails.education}</p>
			<p><strong>Hobbies:</strong> ${user.physicalDetails.hobbies}</p>
			<p><strong>Interest:</strong> ${user.physicalDetails.interest}</p>
		</div>

		<h3>Contact Information:</h3>
		<div class="contact-info">
			<i class="fas fa-envelope"></i>
			<p><strong>Email:</strong> ${user.user.email}</p>
		</div>
	</div>

	<!-- Bootstrap JS (for any interactive components, if needed) -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>