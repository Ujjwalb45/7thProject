<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
</head>
<body>
	<%@ include file="ownProfile.jsp"%>
	<div class="container mt-5 ">
		<form action="EditController" method="post" class="shadow p-4 w-25">
			<!-- Height -->
			<div class="mb-3">
				<label for="height" class="form-label">Height (in cm)</label> <input
					type="number" class="form-control" id="height" name="height"
					placeholder="Enter your height" value="${height}">
			</div>
			<!-- Weight -->
			<div class="mb-3">
				<label for="weight" class="form-label">Weight (in kg)</label> <input
					type="number" class="form-control" id="weight" name="weight"
					placeholder="Enter your weight" value="${weight}">
			</div>
			<div class="mb-3">
				<label for="eyeColor" class="form-label">Eye Color</label> <select
					class="form-control" id="eyeColor" name="eyeColor" required>
					<option value="" disabled ${eyeColor=='' ? 'selected' : ''}>Select
						your eye color</option>
					<option value="brown" ${eyeColor == 'brown' ? 'selected' : ''}>Brown</option>
					<option value="blue" ${eyeColor == 'blue' ? 'selected' : ''}>Blue</option>
					<option value="green" ${eyeColor == 'green' ? 'selected' : ''}>Green</option>
					<option value="hazel" ${eyeColor == 'hazel' ? 'selected' : ''}>Hazel</option>
					<option value="gray" ${eyeColor == 'gray' ? 'selected' : ''}>Gray</option>
					<option value="amber" ${eyeColor == 'amber' ? 'selected' : ''}>Amber</option>
				</select>
			</div>

			<!-- Skin Tone -->
			<div class="mb-3">
				<label for="skinTone" class="form-label">Skin Tone</label> <select
					class="form-select" id="skinTone" name="skinTone">
					<option value="" ${skinTone == '' ? 'selected' : ''}>Select
						skin tone</option>
					<option value="Fair" ${skinTone == 'Fair' ? 'selected' : ''}>Fair</option>
					<option value="Medium" ${skinTone == 'Medium' ? 'selected' : ''}>Medium</option>
					<option value="Dark" ${skinTone == 'Dark' ? 'selected' : ''}>Dark</option>
				</select>
			</div>

			<!-- Blood Type -->
			<div class="mb-3">
				<label for="bloodType" class="form-label">Blood Type</label> <select
					class="form-select" id="bloodType" name="bloodType">
					<option value="" ${bloodType == '' ? 'selected' : ''}>Select
						blood type</option>
					<option value="A+" ${bloodType == 'A+' ? 'selected' : ''}>A+</option>
					<option value="A-" ${bloodType == 'A-' ? 'selected' : ''}>A-</option>
					<option value="B+" ${bloodType == 'B+' ? 'selected' : ''}>B+</option>
					<option value="B-" ${bloodType == 'B-' ? 'selected' : ''}>B-</option>
					<option value="AB+" ${bloodType == 'AB+' ? 'selected' : ''}>AB+</option>
					<option value="AB-" ${bloodType == 'AB-' ? 'selected' : ''}>AB-</option>
					<option value="O+" ${bloodType == 'O+' ? 'selected' : ''}>O+</option>
					<option value="O-" ${bloodType == 'O-' ? 'selected' : ''}>O-</option>
				</select>
			</div>

			<div class="mb-3">
			<label for="job" class="form-label">Job</label> <input
					type="text" class="form-control" id="job" name="job"
					placeholder="Enter your job" value="${job}">
			
			</div>
			<div class="mb-3">
			<label for="Education" class="form-label">Education</label> <input
					type="text" class="form-control" id="education" name="education"
					placeholder="Enter your education" value="${job}">
			
			</div>
			<div class="mb-3">
			<label for="job" class="form-label">Hobbies</label> <input
					type="text" class="form-control" id="hobbies" name="hobbies"
					placeholder="Enter your hobbies" value="${hobbies}">
			
			</div>
			
			<div class="mb-3">
			<label for="job" class="form-label">Interest</label> <input
					type="text" class="form-control" id="interest" name="interest"
					placeholder="Enter your interest" value="${interest}">
			
			</div>

			<div class="modal-footer">
				<input type="hidden" name="action" value="savePhysicalChanges" />
				<button type="submit" class="btn btn-primary w-100">Save
					Changes</button>
			</div>
		</form>
	</div>

</body>
</html>