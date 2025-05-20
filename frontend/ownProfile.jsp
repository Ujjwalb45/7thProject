<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Profile</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #18191a;
	color: #e4e6eb;
	font-family: Arial, sans-serif;
}

.profile-header {
	display: flex;
	align-items: center;
	padding: 15px 20px;
	background-color: white;
	border-bottom:;
}

.profile-header img {
	width: 125px;
	height: 125px;
	border-radius: 50%;
	margin-right: 15px;
}

.profile-header h3 {
	margin: 0;
	font-size: 24px;
}

.nav-tabs {
	margin-top: 20px;
}

.tab-content {
	background-color: #242526;
	border-radius: 8px;
	padding: 20px;
	margin-top: 20px;
}

.post {
	background-color: #3a3b3c;
	border-radius: 8px;
	padding: 15px;
	margin-bottom: 15px;
}

.post .post-header {
	display: flex;
	align-items: center;
}

.post .post-header img {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	margin-right: 10px;
}

.post .post-content {
	margin-top: 10px;
}

.profile-header img {
	border: 2px solid #007bff;
	padding: 5px;
	transition: transform 0.3s ease;
}

.profile-header img:hover {
	transform: scale(1.1);
}
</style>
</head>
<body>

	<%@ include file="header.jsp"%>
	<!-- Profile Header -->
	<!-- Profile Header -->
	<div class="profile-header text-center">
		<img id="profileImage" src="imaged/upload/${sessionScope.imageName }"
			alt="Profile picture of ${name}" class="rounded-circle"
			style="width: 150px; height: 150px; cursor: pointer;">
		<h3>${name}</h3>
	</div>

	<!-- Modal -->
	<!-- Modal -->
	<div class="modal fade" id="imageModal" tabindex="-1"
		aria-labelledby="imageModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content bg-dark text-light">
				<div class="modal-header border-0">
					<h5 class="modal-title" id="imageModalLabel"
						style="color: #00d4ff;">Change Your Profile</h5>
					<button type="button" class="btn-close btn-close-white"
						data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body text-center">
					<!-- Form for file upload -->
					<form action="ProfileImageController" method="POST"
						enctype="multipart/form-data">
						<input type="file" id="fileInput" name="profileImage"
							accept="image/*" style="display: none;">
						<button type="button" id="uploadImageBtn"
							class="btn btn-outline-primary w-100 mb-3">Upload Image</button>
						<input type="hidden" name="action" value="saveImage">
						<button type="submit" class="btn btn-success w-100 mb-3">Save
							Image</button>
					</form>

					<!-- Remove Button -->
					<button id="removeImageBtn"
						class="btn btn-outline-danger w-100 mb-3">Remove Current
						Image</button>

					<!-- Cancel Button -->
					<button class="btn btn-outline-secondary w-100"
						data-bs-dismiss="modal">Cancel</button>
				</div>
			</div>
		</div>
	</div>



	<!-- Navigation Tabs -->
	<div class="container">
		<ul class="nav nav-tabs" id="profileTabs">
			<li class="nav-item"><a class="btn btn-light"
				href="EditController?action=photos">Photos</a></li>
				
				<li class="nav-item"><a class="btn btn-light"
				href="FriendController?action=friend">Friend</a></li>

			<li class="nav-item"><a class="btn btn-light"
				href="EditController?action=generalDetails">General Details</a></li>
			<li class="nav-item"><a class="btn btn-light"
				href="EditController?action=personalDetails">Personal Details</a></li>
			<li class="nav-item"><a class="btn btn-light"
				href="EditController?action=physicalDetails">Physical Details</a></li>
		</ul>

		<!-- Tab Content -->
		<!-- 
        <div class="tab-content">
            <!-- Posts Tab 
            <div class="tab-pane fade show active" id="posts">
                <div class="post">
                    <div class="post-header">
                        <img src="images/rs45.jpg" alt="User">
                        <div>
                            <h6>उज्ज्वल सापकोटा</h6>
                            <small>June 30, 2024</small>
                        </div>
                    </div>
                    <div class="post-content">
                        <p>Happy for Rohit Sharma ❤️✌</p>
                    </div>
                </div>
                Add more posts here 
            </div>
            -->

		<!-- About Tab -->

	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
   // Wait for the DOM to load
      document.addEventListener("DOMContentLoaded", function () {
          // Get the profile image and modal buttons
          const profileImage = document.getElementById("profileImage");
          const uploadImageBtn = document.getElementById("uploadImageBtn");
          const removeImageBtn = document.getElementById("removeImageBtn");

          // Show the modal when the profile image is clicked
          profileImage.addEventListener("click", function () {
              const imageModal = new bootstrap.Modal(document.getElementById("imageModal"));
              imageModal.show();
          });

          // Handle the "Upload Image" button click
         uploadImageBtn.addEventListener("click", () => {
        fileInput.click();
    });

    // Optional: Add a change event to handle file selection
    fileInput.addEventListener("change", (event) => {
        const selectedFile = event.target.files[0];
        if (selectedFile) {
            console.log("File selected:", selectedFile.name); // Replace this with your upload logic
        }
    });

          // Handle the "Remove Current Image" button click
          removeImageBtn.addEventListener("click", function () {
              if (confirm("Are you sure you want to remove the current image?")) {
                  profileImage.src = "images/rs45.jpg"; // Change to a default image
              }
          });
      });
</script>
</body>
</html>
