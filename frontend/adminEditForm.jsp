<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Edit Form</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 20px;
}

h1 {
	text-align: center;
	color: #333;
}

form {
	max-width: 800px;
	margin: 0 auto;
	background: #fff;
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 20px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

fieldset {
	border: 1px solid #ccc;
	border-radius: 6px;
	margin-bottom: 20px;
	padding: 15px;
}

legend {
	font-size: 1.2em;
	font-weight: bold;
	color: #555;
	padding: 0 10px;
}

label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
	color: #333;
}

input[type="text"], input[type="number"], input[type="date"], input[type="email"],
	input[type="password"], input[type="file"], select {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 1em;
}

button[type="submit"] {
	display: block;
	width: 100%;
	padding: 12px;
	background-color: #5cb85c;
	color: #fff;
	border: none;
	border-radius: 6px;
	font-size: 1.2em;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
	background-color: #4cae4c;
}

/* Responsive Design */
@media ( max-width : 768px) {
	form {
		padding: 15px;
	}
	fieldset {
		padding: 10px;
	}
	input[type="text"], input[type="number"], input[type="date"], input[type="email"],
		input[type="password"], input[type="file"], select {
		font-size: 0.9em;
		padding: 8px;
	}
	button[type="submit"] {
		font-size: 1em;
		padding: 10px;
	}
}
</style>
</head>
<body>


	<form action="AdminEditController" method="post"
		enctype="multipart/form-data">
		<!-- Personal Information -->
		<fieldset>
			<legend>Personal Information</legend>
			<br> <br> <label for="firstName">First Name:</label> <input
				type="text" id="firstName" name="firstName"
				value="${userList.user.firstName}" required><br> <br>

			<label for="lastName">Last Name:</label> <input type="text"
				id="lastName" name="lastName" value="${userList.user.lastName}"
				required><br> <br> <label for="dob">Date
				of Birth:</label> <input type="date" id="dob" name="dob"
				value="${userList.user.dob}" required><br> <br> <label
				for="age">Age:</label> <input type="number" id="age" name="age"
				value="${userList.user.age}" required><br> <br> <label
				for="gender">Gender:</label> <select id="gender" name="gender"
				required>
				<option value="Male"
					${userList.user.gender == 'Male' ? 'selected' : ''}>Male</option>
				<option value="Female"
					${userList.user.gender == 'Female' ? 'selected' : ''}>Female</option>
				<option value="Other"
					${userList.user.gender == 'Other' ? 'selected' : ''}>Other</option>
			</select><br> <br>

			<div class="mb-3">
				<label for="gender" class="form-label">Religion</label> <select
					class="form-select" id="gender" name="religion" required>
					<option value="" disabled>Select Religion</option>
					<option value="hindu"
						${userList.user.religion == 'hindu' ? 'selected' : ''}>Hindu</option>
					<option value="muslim"
						${userList.user.religion == 'muslim' ? 'selected' : ''}>Muslim</option>
					<option value="christian"
						${userList.user.religion == 'christian' ? 'selected' : ''}>Christian</option>
					<option value="other"
						${userList.user.religion == 'other' ? 'selected' : ''}>Other</option>
				</select>
			</div>

			<div class="mb-3">
				<label for="gender" class="form-label">Country</label> <select
					class="form-select" id="country" name="country" required>
					<option value="" disabled>Select Country</option>
					<option value="nepal"
						${userList.user.country == 'nepal' ? 'selected' : ''}>Nepal</option>
					<option value="india"
						${userList.user.country == 'india' ? 'selected' : ''}>India</option>
					<option value="usa"
						${userList.user.country == 'usa' ? 'selected' : ''}>United
						States</option>
					<option value="uk"
						${userList.user.country == 'uk' ? 'selected' : ''}>United
						Kingdom</option>
					<option value="canada"
						${userList.user.country == 'canada' ? 'selected' : ''}>Canada</option>
					<option value="australia"
						${userList.user.country == 'australia' ? 'selected' : ''}>Australia</option>
				</select>
			</div>
		</fieldset>


		<!-- Contact Information -->
		<fieldset>
			<legend>Contact Information</legend>
			<label for="phoneNumber">Phone Number:</label> <input type="text"
				id="phoneNumber" name="phoneNumber"
				value="${userList.user.phoneNumber}" required><br> <br>
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" value="${userList.user.email}" required><br>

			<br> <label for="password">Password:</label> <input type="text"
				id="password" name="password" value="${userList.user.password}"
				required><br> <br> <label for="imagePath">Profile
				Image:</label> <input type="file" id="imagePath" name="profileImage"
				value="${userList.user.imagePath }"><br>
		</fieldset>

		<!-- Physical Attributes -->
		<fieldset>
			<div class="mb-3">
				<label for="height" class="form-label">Height (in cm)</label> <input
					type="number" class="form-control" id="height" name="height"
					placeholder="Enter your height"
					value="${userList.physicalDetails.height}">
			</div>
			<!-- Weight -->
			<div class="mb-3">
				<label for="weight" class="form-label">Weight (in kg)</label> <input
					type="number" class="form-control" id="weight" name="weight"
					placeholder="Enter your weight"
					value="${userList.physicalDetails.weight}">
			</div>
			<div class="mb-3">
				<label for="eyeColor" class="form-label">Eye Color</label> <select
					class="form-control" id="eyeColor" name="eyeColor" required>
					<option value="" disabled ${eyeColor=='' ? 'selected' : ''}>Select
						your eye color</option>
					<option value="brown"
						${userList.physicalDetails.eyeColor == 'brown' ? 'selected' : ''}>Brown</option>
					<option value="blue"
						${userList.physicalDetails.eyeColor == 'blue' ? 'selected' : ''}>Blue</option>
					<option value="green"
						${userList.physicalDetails.eyeColor == 'green' ? 'selected' : ''}>Green</option>
					<option value="hazel"
						${userList.physicalDetails.eyeColor == 'hazel' ? 'selected' : ''}>Hazel</option>
					<option value="gray"
						${userList.physicalDetails.eyeColor == 'gray' ? 'selected' : ''}>Gray</option>
					<option value="amber"
						${userList.physicalDetails.eyeColor == 'amber' ? 'selected' : ''}>Amber</option>
				</select>
			</div>

			<!-- Skin Tone -->
			<div class="mb-3">
				<label for="skinTone" class="form-label">Skin Tone</label> <select
					class="form-select" id="skinTone" name="skinTone">
					<option value="" ${skinTone == '' ? 'selected' : ''}>Select
						skin tone</option>
					<option value="Fair"
						${userList.physicalDetails.skinColor == 'Fair' ? 'selected' : ''}>Fair</option>
					<option value="Medium"
						${userList.physicalDetails.skinColor == 'Medium' ? 'selected' : ''}>Medium</option>
					<option value="Dark"
						${userList.physicalDetails.skinColor == 'Dark' ? 'selected' : ''}>Dark</option>
				</select>
			</div>

			<!-- Blood Type -->
			<div class="mb-3">
				<label for="bloodType" class="form-label">Blood Type</label> <select
					class="form-select" id="bloodType" name="bloodType">
					<option value="" ${bloodType == '' ? 'selected' : ''}>Select
						blood type</option>
					<option value="A+"
						${userList.physicalDetails.bloodType == 'A+' ? 'selected' : ''}>A+</option>
					<option value="A-"
						${userList.physicalDetails.bloodType == 'A-' ? 'selected' : ''}>A-</option>
					<option value="B+"
						${userList.physicalDetails.bloodType == 'B+' ? 'selected' : ''}>B+</option>
					<option value="B-"
						${userList.physicalDetails.bloodType == 'B-' ? 'selected' : ''}>B-</option>
					<option value="AB+"
						${userList.physicalDetails.bloodType == 'AB+' ? 'selected' : ''}>AB+</option>
					<option value="AB-"
						${userList.physicalDetails.bloodType == 'AB-' ? 'selected' : ''}>AB-</option>
					<option value="O+"
						${userList.physicalDetails.bloodType == 'O+' ? 'selected' : ''}>O+</option>
					<option value="O-"
						${userList.physicalDetails.bloodType == 'O-' ? 'selected' : ''}>O-</option>
				</select>
			</div>
		</fieldset>

		<!-- Educational and Professional Details -->
		<fieldset>
			<legend>Educational and Professional Details</legend>
			<label for="job">Job:</label> <input type="text" id="job" name="job"
				value="${userList.physicalDetails.job}"><br> <br>

			<div class="mb-3">
				<label for="education" class="form-label">Education</label> <select
					class="form-select" id="education" name="education">
					<option value="" disabled ${userList.physicalDetails.education=='' ? 'selected' : ''}>Select
						your Education</option>
					<option value="SEE"
						${userList.physicalDetails.education == 'SEE' ? 'selected' : ''}>Secondary
						Education Examination (SEE)</option>
					<option value="HSEB"
						${userList.physicalDetails.education == 'HSEB' ? 'selected' : ''}>Higher
						Secondary Education Board (HSEB) (+2)</option>
					<option value="bachelors"
						${userList.physicalDetails.education == 'bachelors' ? 'selected' : ''}>Bachelor's
						Degree</option>
					<option value="masters"
						${userList.physicalDetails.education == 'masters' ? 'selected' : ''}>Master's
						Degree</option>
					<option value="phd"
						${userList.physicalDetails.education == 'phd' ? 'selected' : ''}>PhD</option>
					<option value="diploma"
						${userList.physicalDetails.education == 'diploma' ? 'selected' : ''}>Diploma</option>
					<option value="technical"
						${userList.physicalDetails.education == 'technical' ? 'selected' : ''}>Technical/Vocational
						Training</option>
				</select>
			</div>

		</fieldset>

		<!-- Interests -->
		<fieldset>
			<legend>Hobbies and Interests</legend>
			<label for="hobbies">Hobbies:</label> <input type="text" id="hobbies"
				name="hobbies" value="${userList.physicalDetails.hobbies}"><br>
			<br> <label for="interest">Interests:</label> <input type="text"
				id="interest" name="interest"
				value="${userList.physicalDetails.interest}"><br> <br>
		</fieldset>

		<div>
			<input type="hidden" name="id" value="${userList.user.id}">
			<button type="submit">Edit</button>
		</div>

	</form>
</body>
</html>