<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        .profile-image-preview {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            cursor: pointer;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 30px;
            background-color: #f9f9f9;
            border-radius: 8px;
        }

        .form-container h2 {
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .btn-submit {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>
    <div class="container">
        <!-- Form Container -->
        <div class="form-container">
            <h2>Update Your Profile</h2>
            <form action="ProfileUpdateController" method="POST" enctype="multipart/form-data">
                

                    
                             <!-- Profile Image Upload -->
                <div class="form-group">
                    <label for="profileImage">Profile Picture</label>
                    <input type="file" id="profileImage" name="profileImage" accept="image/*" class="form-control">
                    <img id="profileImagePreview" src="${profileImage != null ? profileImage : 'images/rs45.jpg'}" 
                         alt="Profile Image" class="profile-image-preview mt-2">
                </div>
                
                <!-- Hobbies Selection -->
                <div class="form-group">
                    <label for="interest">Select Interest</label>
                    <select id="interest" name="interest" class="form-control">
                        <option value="Traveling">Traveling</option>
                        <option value="Reading">Reading</option>
                        <option value="Music">Music</option>
                        <option value="Movies">Movies</option>
                        <option value="Sports">Sports</option>
                        <option value="Cooking">Cooking</option>
                        <option value="Painting">Painting</option>
                        <option value="Playing Guitar">Playing Guiter</option>
                    </select>
                </div>
                
                

                <!-- Job Field -->
                <div class="form-group">
                    <label for="job">Job</label>
                    <input type="text" id="job" name="job" class="form-control" placeholder="Enter your job">
                </div>

                <!-- Height Field -->
                <div class="form-group">
                    <label for="height">Height (ft)</label>
                    <input type="number" id="height" name="height" class="form-control" placeholder="Enter your height in ft">
                </div>

                <!-- Weight Field -->
                <div class="form-group">
                    <label for="weight">Weight (kg)</label>
                    <input type="number" id="weight" name="weight" class="form-control" placeholder="Enter your weight in kg">
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn-submit">Save Profile</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Preview Profile Image before uploading
        document.getElementById("profileImage").addEventListener("change", function (e) {
            const reader = new FileReader();
            reader.onload = function () {
                document.getElementById("profileImagePreview").src = reader.result;
            };
            reader.readAsDataURL(e.target.files[0]);
        });
    </script>
</body>
</html>
