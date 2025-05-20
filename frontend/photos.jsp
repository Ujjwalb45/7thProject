<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
.image-card {
	margin-bottom: 20px;
}

.image-card img {
	width: 100%;
	height: auto;
	border-radius: 8px;
}
</style>
</head>
<body>
	<%@ include file="ownProfile.jsp"%>
	<div class="container mt-4">
		<div class="shadow p-4 w-50">
			<div class="row">
				<!-- Photo 1 -->
				<div class="col-md-3">
					<div class="card image-card">
						<img src="imaged/upload/${imageName }" alt="Photo 1"
							class="card-img-top">
					</div>
				</div>

				<!-- Photo 2 -->
				<div class="col-md-3">
					<div class="card image-card">
						<img src="images/jacksparrow.jpg" alt="Photo 2"
							class="card-img-top">
					</div>
				</div>

				<!-- Photo 3 -->
				<div class="col-md-3">
					<div class="card image-card">
						<img src="images/jacksparrow.jpg" alt="Photo 3"
							class="card-img-top">
					</div>
				</div>

				<!-- Photo 4 -->
				<div class="col-md-3">
					<div class="card image-card">
						<img src="images/jacksparrow.jpg" alt="Photo 4"
							class="card-img-top">
					</div>
				</div>

				<div class="col-md-3">
					<div class="card image-card">
						<img src="images/jacksparrow.jpg" alt="Photo 1"
							class="card-img-top">
					</div>
				</div>

				<!-- Photo 2 -->
				<div class="col-md-3">
					<div class="card image-card">
						<img src="" alt="Photo 2" class="card-img-top">
					</div>
				</div>

				<!-- Photo 3 -->
				<div class="col-md-3">
					<div class="card image-card">
						<img src="images/jacksparrow.jpg" alt="Photo 3"
							class="card-img-top">
					</div>
				</div>

				<!-- Photo 4 -->
				<div class="col-md-3">
					<div class="card image-card">
						<img src="images/jacksparrow.jpg" alt="Photo 4"
							class="card-img-top">
					</div>
				</div>
			</div>
		</div>

		<form action="UploadServlet" method="post"
			enctype="multipart/form-data" class="mb-4">
			<input type="file" name="images" class="form-control mb-2" multiple
				required>
			<button type="submit" class="btn btn-primary">Upload Images</button>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>