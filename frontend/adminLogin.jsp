<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<title>Admin</title>
<style>
body {
    font-family: Arial, sans-serif;
    background: #282c34;
    color: #fff;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    width: 100%;
    max-width: 600px;
    position: relative;
    overflow: hidden;
    border-radius: 1rem;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
    background: #444;
}

.form-container {
    display: flex;
    transition: transform 0.5s ease;
    width: 200%;
}

.form-box {
    width: 50%;
    padding: 40px 30px;
    box-sizing: border-box;
    text-align: center;
    background: #333;
}

.form-box h2 {
    margin-bottom: 20px;
    font-size: 1.8rem;
    color: #00bcd4;
}

.form-box input {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    font-size: 1rem;
}

.form-box button {
    width: 90%;
    padding: 12px;
    margin-top: 10px;
    border: none;
    border-radius: 5px;
    background: #00bcd4;
    color: #fff;
    font-size: 1rem;
    cursor: pointer;
    transition: background 0.3s ease;
}

.form-box button:hover {
    background: #0097a7;
}

.form-box p {
    margin-top: 15px;
    font-size: 0.9rem;
    color: #ccc;
}

.toggle-link {
    color: #00bcd4;
    cursor: pointer;
    text-decoration: underline;
    font-weight: bold;
}

</style>
</head>
<body>
<div class="container">
    <div class="form-container" id="form-container">
        <!-- Login Form -->
        <form action="AdminController" method="post" class="form-box" id="login-form">
            <h2>Login</h2>
            <input type="email" name="loginEmail" placeholder="Email" />
            <input type="password" name="loginPassword" placeholder="Password"/>
            <input type="hidden" name="action" value="login">
            <button type="submit">Login</button>
            <p>
                Don't have an account? <span class="toggle-link" onclick="showSignUp()">Sign Up</span>
            </p>
        </form>

        <!-- Signup Form -->
        <form action="AdminController" method="post" class="form-box" id="signup-form">
            <h2>Sign Up</h2>
            <input type="text" name="fullName" placeholder="Full Name" />
            <input type="email" name="email" placeholder="Email"  />
            <input type="password" name="password" placeholder="Password" />
            <input type="password" name="confirmPassword" placeholder="Confirm Password" />
            <input type="hidden" name="action" value="signUp">
            <button type="submit">Sign Up</button>
            <p>
                Already have an account? <span class="toggle-link" onclick="showLogin()">Login</span>
            </p>
        </form>
    </div>
</div>


<script>
    const formContainer = document.getElementById('form-container');

    function showSignUp() {
        formContainer.style.transform = 'translateX(-50%)';
    }

    function showLogin() {
        formContainer.style.transform = 'translateX(0)';
    }
</script>
</body>
</html>
