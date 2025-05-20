<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information Form</title>
    <!-- Bootstrap CSS -->
    <link rel="icon" href="images/icon1.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script>
        // Function to calculate age from Date of Birth
        function calculateAge() {
            var dob = document.getElementById('dob').value;
            if (dob) {
                var dobDate = new Date(dob);
                var today = new Date();
                var age = today.getFullYear() - dobDate.getFullYear();
                var month = today.getMonth() - dobDate.getMonth();
                if (month < 0 || (month === 0 && today.getDate() < dobDate.getDate())) {
                    age--;
                }
                document.getElementById('age').value = age; // Set the age field value
            }
        }

        // Function to show the loading screen
        function showLoading() {
            document.getElementById('loadingScreen').style.display = 'flex';
        }

        // Function to hide the loading screen after 1 second and redirect
        function redirectToNextPage() {
            showLoading(); // Show the loading screen
            setTimeout(function() {
                window.location.href = 'personalDetails.jsp'; // Redirect to next page
            }, 1000); // 1 second delay
        }
        
        function validateForm(){
        	var firstName=document.getElementById("firstName").value.trim();
        	var lastName=document.getElementById("lastName").value.trim();
        	var dob=document.getElementById("dob").value;
        	var age=document.getElementById("age").value;
        	var gender=document.getElementById("gender").value;
        	
        	const firstNameSpan = document.getElementById('firstNameError');
        	const lastNameSpan = document.getElementById('lastNameError');
        	const dobSpan = document.getElementById('dobError');
        	const ageSpan = document.getElementById('ageError');
        	const genderSpan = document.getElementById('genderError');
        	
        	var isValid=true;
        	
        	if(firstName==""){
        		 firstNameSpan.textContent = "First Name is required.";
                 isValid = false;
        	}
        	if(lastName==""){
       		 lastNameSpan.textContent = "Last Name is required.";
                isValid = false;
       	    }
        	if(dob==""){
       		 dobSpan.textContent = "Date of Birth is required.";
                isValid = false;
       	    } 
        	if(age==""){
        		ageSpan.textContent="Age is required.";
        		isValid=false;
        	}
        	if(gender==""){
        		genderSpan.textContent="Please select a gender.";
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
            <h2 class="text-center">General Information Form</h2>

            <form action="GeneralDataServlet" method="post" >
                <!-- First Name -->
                <div class="mb-3">
                    <label for="firstName" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="firstName" name="firstName">
                    <span id="firstNameError" style="color: red;"></span>
                </div>

                <!-- Last Name -->
                <div class="mb-3">
                    <label for="lastName" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="lastName" name="lastName">
                    <span id="lastNameError" style="color: red;"></span>
                </div>

                <!-- Date of Birth -->
                <div class="mb-3">
                    <label for="dob" class="form-label">Date of Birth</label>
                    <input type="date" class="form-control" id="dob" onchange="calculateAge()" name="dob">
                    <span id="dobError" style="color: red;"></span>
                </div>

                <!-- Age (Automatically calculated) -->
                <div class="mb-3">
                    <label for="age" class="form-label">Age</label>
                    <input type="text" class="form-control" id="age" name="age" >
                    <span id="ageError" style="color: red;"></span>
                </div>

                <!-- Gender -->
                <div class="mb-3">
                    <label for="gender" class="form-label" >Gender</label>
                    <select class="form-select" id="gender" name="gender">
                        <option value="" disabled selected>Select Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                    <span id="genderError" style="color: red;"></span>
                </div>

                <!-- Continue Button with Loading Functionality -->
                <button type="submit" class="btn btn-primary w-100" onclick="return validateForm()" >Continue</button>
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
