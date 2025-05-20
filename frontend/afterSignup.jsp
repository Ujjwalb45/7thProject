<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome - Dating Platform</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<!-- Bootstrap CSS -->
<!-- Bootstrap CSS -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<!-- Popper.js -->
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>

<!-- Bootstrap JS -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
}

.welcome-message h2 {
	font-size: 2rem;
	margin: 20px 0;
}

.complete-profile-icon {
	font-size: 2rem;
	color: #007bff;
	cursor: pointer;
	transition: color 0.3s;
}

.complete-profile-icon:hover {
	color: #0056b3;
}

.carousel-item img {
	border-radius: 50%;
	max-height: 200px;
	object-fit: cover;
}

.profile-text {
	font-weight: bold;
	font-size: 1.2rem;
	color: #007bff;
	transition: color 0.3s ease;
}

.profile-text:hover {
	color: #0056b3;
	text-decoration: underline;
}

.profile-icon {
	font-size: 1.5rem;
	color: #007bff;
	cursor: pointer;
	transition: color 0.3s, transform 0.3s ease;
}

.profile-icon:hover {
	color: #0056b3;
	transform: scale(1.1);
}

img {
	border-radius: 50%;
}

.shadow:hover {
	box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
	transform: scale(1.05);
	transition: all 0.3s ease-in-out;
}

/* Image styling */
img {
	object-fit: cover;
}

/* Responsive adjustments for small screens */
@media ( max-width : 768px) {
	.col-md-3 {
		flex: 0 0 45%; /* Two cards per row */
		max-width: 45%;
		margin-bottom: 15px;
	}
}

@media ( max-width : 576px) {
	.col-md-3 {
		flex: 0 0 100%; /* One card per row */
		max-width: 100%;
	}
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<h1></h1>

	<!-- Welcome Message -->
	<div
		class="welcome-message text-center d-flex justify-content-center align-items-center">
		<h2 class="me-5">Hii ${name}, ${greeting}</h2>

		<!-- Larger gap between name and profile text -->
		<%
		//if (session!= null) {
		//session.invalidate();
		//}
		%>
		<%
		// Check if the session attribute isLogin is true
		Boolean isLogin = (Boolean) session.getAttribute("isLogin");
		Boolean completeProfile = (Boolean) session.getAttribute("completeProfile");
		if (isLogin == null || !isLogin || completeProfile == null || !completeProfile) { // Show only if not logged in
		%>
		<div id="profile-section">
			<span class="profile-text me-3">Complete Your Profile</span> <i
				class="fas fa-user-edit profile-icon" onclick="showProfileModal()"
				title="Complete Your Profile"></i>
		</div>
		<%
		}
		%>
	</div>




	<!-- Modal for Completing Profile -->
	<!-- Profile section with the icon -->

	<!-- Modal -->
	<div class="modal fade" id="profileModal" tabindex="-1"
		aria-labelledby="profileModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="profileModalLabel">Complete Your
						Profile</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- Form container -->
					<form id="profileForm" action="PhysicalDetailsController"
						method="post">
						<!-- Section 1: Physical Details -->
						<div class="mb-3">
							<label for="height" class="form-label">Height (in cm)</label> <input
								type="number" class="form-control" id="height" name="height"
								placeholder="Enter your height">
						</div>
						<div class="mb-3">
							<label for="weight" class="form-label">Weight (in kg)</label> <input
								type="number" class="form-control" id="weight" name="weight"
								placeholder="Enter your weight">
						</div>
						<div class="mb-3">
							<label for="eyeColor" class="form-label">Eye Color</label> <select
								class="form-control" id="eyeColor" name="eyeColor">
								<option value="" disabled selected>Select your eye
									color</option>
								<option value="brown">Brown</option>
								<option value="blue">Blue</option>
								<option value="green">Green</option>
								<option value="hazel">Hazel</option>
								<option value="gray">Gray</option>
								<option value="amber">Amber</option>
							</select>
						</div>
						<div class="mb-3">
							<label for="skinTone" class="form-label">Skin Tone</label> <select
								class="form-select" id="skinTone" name="skinTone">
								<option value="" disabled selected>Select skin tone</option>
								<option value="Fair">Fair</option>
								<option value="Medium">Medium</option>
								<option value="Dark">Dark</option>
							</select>
						</div>
						<div class="mb-3">
							<label for="bloodType" class="form-label">Blood Type</label> <select
								class="form-select" id="bloodType" name="bloodType">
								<option value="" disabled selected>Select blood type</option>
								<option value="A+">A+</option>
								<option value="A-">A-</option>
								<option value="B+">B+</option>
								<option value="B-">B-</option>
								<option value="AB+">AB+</option>
								<option value="AB-">AB-</option>
								<option value="O+">O+</option>
								<option value="O-">O-</option>
							</select>
						</div>

						<!-- Section 2: Professional Details -->
						<div class="mb-3">
							<label for="jobTitle" class="form-label">Job</label> <input
								type="text" class="form-control" id="jobTitle" name="job"
								placeholder="Enter your job title">
						</div>
						<div class="mb-3">
							<label for="education" class="form-label">Education</label> <select
								class="form-control" id="education" name="education">
								<option value="" disabled selected>Select your
									Education</option>
								<option value="SEE">Secondary Education Examination
									(SEE)</option>
								<option value="HSEB">Higher Secondary Education Board
									(HSEB) (+2)</option>
								<option value="bachelors">Bachelor's Degree</option>
								<option value="masters">Master's Degree</option>
								<option value="phd">PhD</option>
								<option value="diploma">Diploma</option>
								<option value="technical">Technical/Vocational Training</option>
							</select>
						</div>

						<!-- Section 3: Hobbies and Interests -->
						<div class="mb-3">
							<label for="hobbies" class="form-label">Hobbies</label> <input
								type="text" class="form-control" id="hobbies" name="hobbies"
								placeholder="Enter your hobbies (e.g., Reading, Gardening)">
						</div>
						<div class="mb-3">
							<label for="interests" class="form-label">Interests</label> <input
								type="text" class="form-control" id="interests" name="interests"
								placeholder="Enter your interests (e.g., Technology, Science)">
						</div>

						<input type="hidden" name="action" value="saveChanges">
						<button type="submit" class="btn btn-primary w-100">SaveChanges</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Recommended Users Section -->
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<c:if test="${!empty user}">
				<c:forEach items="${user}" var="user" varStatus="status">
					<!-- Start a new carousel-item every 5 users -->
					<c:if test="${status.index % 5 == 0}">
						<div class="carousel-item ${status.index == 0 ? 'active' : ''}">
							<div class="d-flex justify-content-center">
					</c:if>

					<!-- User Card -->
					<div class="card mx-2 text-center shadow-lg p-3 rounded"
						style="width: 250px;">
						<a href="profile.jsp?user=1"> <img
							src="${user.user.imagePath}" alt="${user.user.firstName}"
							class="object-fit-cover card-img-top rounded-circle"
							style="width: 150px; height: 150px; object-fit: cover;">
						</a>
						<div class="card-body">
							<a href="profile.jsp?user=1"
								class="text-decoration-none text-dark">
								<p class="card-title">${user.user.firstName}
									${user.user.lastName}</p>
								<p class="interest text-muted">Interest:
									${user.physicalDetails.interest}</p>
							</a>
						</div>
						<a
							href="DisplayUserDetailsController?action=viewUserDetails&id1=${user.user.id}"
							class="btn btn-outline-info">View Profile </a>
						<form action="FriendController" method="post">

							<input type="hidden" name="friendId" value="${user.user.id}">
							<input type="hidden" name="userId" value="${id}">
							<button type="submit">Add Friend</button>
						</form>
					</div>

					<!-- Close carousel-item after 5 users -->
					<c:if test="${(status.index + 1) % 5 == 0 || status.last}">
		</div>
	</div>
	</c:if>
	</c:forEach>
	</c:if>
	</div>

	<!-- Carousel Controls -->
	</div>




	<!-- Second Slide -->


	<!-- Carousel Controls -->
	<a class="carousel-control-prev" href="#carouselExampleControls"
		role="button" data-slide="prev"> <span
		class="carousel-control-prev-icon" aria-hidden="true"
		style="background-color: black; border-radius: 100%"></span>

	</a>
	<a class="carousel-control-next" href="#carouselExampleControls"
		role="button" data-slide="next"> <span
		class="carousel-control-next-icon" aria-hidden="true"
		style="background-color: black; border-radius: 100%"></span>

	</a>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- JavaScript -->
	<script>
		// Show Bootstrap modal
		function showProfileModal() {
			const myModal = new bootstrap.Modal(document
					.getElementById('profileModal'), {
				keyboard : false,
			});
			myModal.show();
		}
	</script>

</body>
</html>
