<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="icon" href="images/icon1.png" type="image/x-icon">
    <style>
   .form-control{
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

<%@ include file="ownProfile.jsp" %>
<div class="container mt-5 ">
        <form action="EditController" class="shadow p-4 w-25" method="post">
        
            <!-- First Name -->
            

            <!-- Gender -->
            <div class="mb-3">
                <label for="gender" class="form-label">Religion</label>
                <select class="form-select" id="gender" name="religion" required>
                    <option value="" disabled>Select Religion</option>
                    <option value="hindu" ${religion == 'hindu' ? 'selected' : ''}>Hindu</option>
                    <option value="muslim" ${religion == 'muslim' ? 'selected' : ''}>Muslim</option>
                    <option value="christian" ${religion == 'christian' ? 'selected' : ''}>Christian</option>
                    <option value="other" ${religion == 'other' ? 'selected' : ''}>Other</option>
                </select>
            </div>

         <div class="mb-3">
                <label for="gender" class="form-label">Country</label>
                <select class="form-select" id="country" name="country" required>
        <option value="" disabled >Select Country</option>
        <option value="nepal" ${country == 'nepal' ? 'selected' : ''}>Nepal</option>
        <option value="india" ${country == 'india' ? 'selected' : ''}>India</option>
        <option value="usa" ${country == 'usa' ? 'selected' : ''}>United States</option>
        <option value="uk" ${country == 'uk' ? 'selected' : ''}>United Kingdom</option>
        <option value="canada" ${country == 'canada' ? 'selected' : ''}>Canada</option>
        <option value="australia" ${country == 'australia' ? 'selected' : ''}>Australia</option>
    </select>
            </div>
            <!-- Submit Button -->
            <input type="hidden" name="action" value="savePersonalChanges" />
            <button type="submit" class="btn btn-primary w-100">Save Changes</button>
        </form>
    </div>
        
        
              <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>