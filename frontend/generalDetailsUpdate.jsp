<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Profile</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<style>
.form-control {
	display: block;
	width: 35%;
	padding: .375rem .75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: var(--bs-body-color);
	background-color: var(--bs-body-bg);
	background-clip: padding-box;
	border: var(--bs-border-width) solid var(--bs-border-color);
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: var(--bs-border-radius);
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}
</style>
</head>
<body>

	<%@ include file="ownProfile.jsp"%>
	<div class="container mt-5 ">
		<form action="EditController" class="shadow p-4 w-25" method="post">

			<!-- First Name -->
			<div class="mb-3">
				<label for="firstName" class="form-label">First Name</label> <input
					type="text" class="form-control" id="firstName" name="firstName"
					value="${firstName}" required>
			</div>

			<!-- Last Name -->
			<div class="mb-3">
				<label for="lastName" class="form-label">Last Name</label> <input
					type="text" class="form-control" id="lastName" name="lastName"
					value="${lastName}" required>
			</div>

			<!-- Date of Birth -->
			<div class="mb-3">
				<label for="dob" class="form-label">Date of Birth</label> <input
					type="date" class="form-control" id="dob" name="dob" value="${dob}"
					required>
			</div>

			<!-- Age (Read-Only) -->
			<div class="mb-3">
				<label for="age" class="form-label">Age</label> <input type="text"
					class="form-control" id="age" name="age" value="${age}" readonly>
			</div>

			<!-- Gender -->
			<div class="mb-3">
				<label for="gender" class="form-label">Gender</label> <select
					class="form-select" id="gender" name="gender" required>
					<option value="" disabled>Select Gender</option>
					<option value="male" ${gender == 'male' ? 'selected' : ''}>Male</option>
					<option value="female" ${gender == 'female' ? 'selected' : ''}>Female</option>
					<option value="other" ${gender == 'other' ? 'selected' : ''}>Other</option>
				</select>
			</div>

			<!-- Submit Button -->
			<input type="hidden" name="action" value="saveGeneralChanges" />
			<button type="submit" class="btn btn-primary w-100">Save
				Changes</button>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
		
		<script></script>
</body>
</html>