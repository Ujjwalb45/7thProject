<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secure Your Profile</title>
    <!-- Bootstrap CSS -->
    <link rel="icon" href="images/icon1.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        #password-strength {
            height: 5px;
            border-radius: 5px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<%@ include file="navBar.jsp" %>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="text-center">Secure Your Profile</h2>

            <form action="DetailsSubmitController" method="post" novalidate>
                <!-- Phone Number -->
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" id="phone" placeholder="Enter your phone number" name="phoneNumber" required>
                    <div class="invalid-feedback">Please enter a valid phone number.</div>
                </div>

                <!-- Email Address -->
                <div class="mb-3">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email" required>
                    <div class="invalid-feedback">Please enter a valid email address.</div>
                </div>

                <!-- Password -->
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <div class="input-group">
                        <input type="password" class="form-control" id="password" placeholder="Enter your password" name="password" required>
                        <button type="button" class="btn btn-outline-secondary" id="togglePassword">
                            <i class="fa fa-eye"></i>
                        </button>
                    </div>
                    <div id="password-strength"></div>
                    <div class="invalid-feedback">Please enter a password.</div>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn btn-primary w-100">Submit</button>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- JavaScript for Password Toggle and Strength Meter -->
<script>
  // Password Toggle
  document.getElementById('togglePassword').addEventListener('click', function () {
    const passwordInput = document.getElementById('password');
    const icon = this.querySelector('i');

    if (passwordInput.type === 'password') {
      passwordInput.type = 'text';
      icon.classList.remove('fa-eye');
      icon.classList.add('fa-eye-slash');
    } else {
      passwordInput.type = 'password';
      icon.classList.remove('fa-eye-slash');
      icon.classList.add('fa-eye');
    }
  });

  // Password Strength Meter
  const passwordInput = document.getElementById('password');
  const strengthBar = document.getElementById('password-strength');

  passwordInput.addEventListener('input', function () {
    const value = passwordInput.value;
    const strength = calculatePasswordStrength(value);

    // Set the strength bar width and color
    strengthBar.style.width = strength.percent + '%';
    strengthBar.style.backgroundColor = strength.color;
  });

  function calculatePasswordStrength(password) {
    let strength = 0;

    if (password.length >= 8) strength += 25; // Length check
    if (/[A-Z]/.test(password)) strength += 25; // Uppercase letter
    if (/[a-z]/.test(password)) strength += 25; // Lowercase letter
    if (/[0-9]/.test(password)) strength += 25; // Numbers
    if (/[@$!%*?&#]/.test(password)) strength += 25; // Special characters

    // Cap strength at 100%
    strength = Math.min(strength, 100);

    return {
      percent: strength,
      color: strength < 50 ? 'red' : strength < 75 ? 'orange' : 'green'
    };
  }

  // Form Validation
  
</script>
</body>
</html>
