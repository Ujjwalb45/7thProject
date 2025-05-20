<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Details</title>
    <!-- Bootstrap CSS -->
    <link rel="icon" href="images/icon1.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script>
        // Function to show/hide Caste and Birth Tithi fields based on religion selection
       

        // Function to show the loading screen
        function showLoading() {
            document.getElementById('loadingScreen').style.display = 'flex'; // Show loading screen
        }

        // Function to hide the loading screen after 1 second and proceed with form submission
        function submitForm() {
        		 showLoading(); // Show loading screen
                 setTimeout(function() {
                     document.querySelector('form').submit();
                     window.location.href = 'securityDetails.jsp';
                 }, 1000); // 1 second delay
        		 
        	 
           
        }
        
        function validateForm()
        {
        	var religion=document.getElementById("religion").value;
        	var country=document.getElementById("country").value;
        	
        	
        	const religionSpan = document.getElementById('religionError');
        	const countrySpan = document.getElementById('countryError');
        	
        	var isValid=true;
        	
        	if(religion==""){
        		religionSpan.textContent="Select your religion.";
        		isValid=false;
        	}
        	if(country==""){
        		countrySpan.textContent="Select your country.";
        		isValid=false;
        	}
        	
        	
        	return isValid;
        	
        }
        
    </script>
</head>
<body>
<%@ include file="navBar.jsp" %>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="text-center">User Information Form</h2>

            <form action="PersonalDataController" method="post" >
                <!-- Religion -->
                <div class="mb-3">
                    <label for="religion" class="form-label" >Religion</label>
                    <select class="form-select" id="religion" onchange="toggleHinduFields()" name="religion" required>
                        <option value="" disabled selected>Select Religion</option>
                        <option value="hindu">Hindu</option>
                        <option value="muslim">Muslim</option>
                        <option value="christian">Christian</option>
                        <option value="other">Other</option>
                    </select>
                    <span id="religionError" style="color: red;"></span>
                </div>

                <!-- Country (Always visible) -->
                <div class="mb-3">
                    <label for="country" class="form-label" >Country</label>
                    <select class="form-select" id="country" name="country" required>
                        <option value="" disabled selected>Select Country</option>
                        <option value="nepal">Nepal</option>
                        <option value="india">India</option>
                        <option value="usa">United States</option>
                        <option value="uk">United Kingdom</option>
                        <option value="canada">Canada</option>
                        <option value="australia">Australia</option>
                    </select>
                  <span id="countryError" style="color: red;"></span>
                </div>

                <!-- Hindu-specific Fields (Caste and Birth Tithi) -->

                <!-- Submit Button -->
                <button type="sumbit" class="btn btn-primary w-100" onclick="return validateForm()">Continue</button>
            </form>
        </div>
    </div>
</div>

<!-- Loading Screen -->
<div id="loadingScreen" style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.5); z-index: 9999; justify-content: center; align-items: center;">
    <div class="spinner-border text-white" role="status">
        <span class="sr-only"></span>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
