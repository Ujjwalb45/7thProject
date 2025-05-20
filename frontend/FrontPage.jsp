<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dating & Marriage Platform</title>
    <!-- Bootstrap CSS -->
    <link rel="icon" href="images/icon1.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Half-Screen Background Section */
        .half-screen {
            background: url("images/front.png") no-repeat center center;
            background-size: cover;
            height: 20vh; /* 30% of the viewport height */
            position: relative;
        }

        /* Button styling */
        .btn-custom {
            padding: 10px 20px;
            font-size: 18px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }

        /* Footer styling */
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 15px 0;
            position: flex;
            bottom: 0;
            width: 100%;
        }

        /* Image Styling */
        .image-container img {
            width: 100%; /* Makes images responsive */
            height: 250px; /* Fixed height for uniform size */
            object-fit: cover; /* Ensures images cover the area without distortion */
        }

        /* Center the button above the images */
        .button-container {
            text-align: center;
            margin-bottom: 30px; /* Adds space between button and images */
        }

        /* Styling for the "One Click" text and button */
        .button-with-text {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .one-click-text {
            margin-right: 10px; /* Space between text and button */
            font-size: 18px;
            font-weight: bold;
            color: #007bff; /* Optional: matching color with button */
        }

        /* Loading Screen */
        #loadingScreen {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            display: none; /* Hidden by default */
            justify-content: center;
            align-items: center;
            z-index: 9999; /* Ensures it's on top of all other content */
        }
        .spinner-border {
            width: 3rem;
            height: 3rem;
            border-width: 0.4em;
            color: #ffffff;
        }
    </style>
</head>
<body>
<%@ include file="navBar.jsp" %>

    <!-- Half-Screen Background Section -->
    <div class="half-screen"></div>

    <!-- Button with "One Click" Text Above the Images -->
    <br><br>
    <div class="button-container">
        <div class="button-with-text">
            <span class="one-click-text">Your story is waiting to happen<br>Just One Click to start your journey</span>
            <button class="btn-custom" id="letsBeginBtn">Let's Begin</button>
        </div>
    </div>

    <!-- Container for Three Images -->
    <div class="container my-5">
   <h2>Couples Married using this website</h2> 
        <div class="row">
            <!-- Picture 1 -->
            <div class="col-md-4 mb-4">
                <div class="image-container">
                    <img src="images/krishna.jpg" alt="Krishna">
                </div>
                <div class="description">
                    <p>Krishna: The Divine Lover</p>
                </div>
            </div>

            <!-- Picture 2 -->
            <div class="col-md-4 mb-4">
                <div class="image-container">
                    <img src="images/vishnu.png" alt="Vishnu">
                </div>
                <div class="description">
                    <p>Vishnu: The Protector</p>
                </div>
            </div>

            <!-- Picture 3 -->
            <div class="col-md-4 mb-4">
                <div class="image-container">
                    <img src="images/shiva.png" alt="Shiva">
                </div>
                <div class="description">
                    <p>Shiva: The Destroyer</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Love Connect. All Rights Reserved.</p>
        <p>
            <a href="#" class="text-decoration-none text-light">Privacy Policy</a> | 
            <a href="#" class="text-decoration-none text-light">Terms of Service</a>
        </p>
    </footer>

    <!-- Loading Screen -->
    <div id="loadingScreen">
        <div class="spinner-border" role="status">
            <span class="sr-only"></span>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        // Function to show loading screen
        function showLoading() {
            document.getElementById('loadingScreen').style.display = 'flex';
        }

        // Function to hide loading screen
        function hideLoading() {
            document.getElementById('loadingScreen').style.display = 'none';
        }

        // Trigger loading and redirect after clicking the "Let's Begin" button
        document.getElementById('letsBeginBtn').addEventListener('click', function() {
            showLoading(); // Show loading screen
            setTimeout(function() {
                window.location.href  = 'generalDetails.jsp'; // Redirect to next page after 1 second
            }, 1000); // 1 second delay
        });
    </script>
</body>
</html>
