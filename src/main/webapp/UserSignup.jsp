```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Signup | CareerConnect</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

body {
    min-height: 100vh;
    background: #f1f5f9;
    display: flex;
    flex-direction: column;
    color: #334155;
}

/* Navbar */
.navbar {
    width: 100%;
    background: #ffffff;
    padding: 17px 7%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 10px rgba(0,0,0,0.06);
}

.logo {
    color: #1e3a5f;
    font-size: 25px;
    font-weight: 700;
    text-decoration: none;
    letter-spacing: 0.3px;
}

.nav-link {
    color: #1e3a5f;
    text-decoration: none;
    font-weight: 600;
    font-size: 14px;
}

.nav-link:hover {
    color: #2563eb;
}

/* Main content */
.main-content {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 20px;
}

.signup-container {
    width: 100%;
    max-width: 560px;
    background: #ffffff;
    padding: 35px 40px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.07);
}

h1 {
    text-align: center;
    color: #1e3a5f;
    font-size: 27px;
    margin-bottom: 8px;
}

.subtitle {
    text-align: center;
    color: #64748b;
    font-size: 14px;
    margin-bottom: 28px;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
    gap: 17px;
}

.form-group {
    display: flex;
    flex-direction: column;
    gap: 7px;
}

label {
    color: #334155;
    font-size: 13px;
    font-weight: 600;
}

input[type="text"],
input[type="email"],
input[type="tel"],
input[type="password"],
input[type="date"] {
    width: 100%;
    padding: 12px 14px;
    border: 1px solid #cbd5e1;
    border-radius: 7px;
    outline: none;
    background: #ffffff;
    color: #1e293b;
    font-size: 14px;
    transition: 0.2s;
}

input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
}

/* Gender */
.gender-group {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 18px;
    padding: 5px 0;
}

.gender-title {
    font-size: 13px;
    font-weight: 600;
    color: #334155;
    width: 100%;
}

.gender-option {
    display: flex;
    align-items: center;
    gap: 7px;
    font-size: 14px;
    color: #475569;
    cursor: pointer;
}

.gender-option input {
    accent-color: #1e3a5f;
}

/* Buttons */
.buttons {
    display: flex;
    gap: 12px;
    margin-top: 8px;
}

button {
    flex: 1;
    padding: 13px;
    border-radius: 7px;
    border: 1px solid #1e3a5f;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.25s;
}

.signup {
    background: #1e3a5f;
    color: #ffffff;
}

.signup:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.cancel {
    background: #ffffff;
    color: #64748b;
    border-color: #cbd5e1;
}

.cancel:hover {
    background: #f1f5f9;
    color: #1e3a5f;
    border-color: #1e3a5f;
}

.login-text {
    text-align: center;
    margin-top: 23px;
    font-size: 14px;
    color: #64748b;
}

.login-text a {
    color: #2563eb;
    font-weight: 600;
    text-decoration: none;
}

.login-text a:hover {
    text-decoration: underline;
}

/* Footer */
footer {
    background: #ffffff;
    text-align: center;
    padding: 17px;
    color: #64748b;
    font-size: 13px;
    border-top: 1px solid #e2e8f0;
}

/* Responsive */
@media (max-width: 600px) {
    .signup-container {
        padding: 28px 22px;
    }

    .navbar {
        padding: 15px 5%;
    }

    .logo {
        font-size: 22px;
    }

    .buttons {
        flex-direction: column;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <a href="/" class="logo">CareerConnect</a>
    <a href="/" class="nav-link">Home</a>
</nav>

<!-- Signup Form -->
<main class="main-content">
    <div class="signup-container">

        <h1>Create Your Account</h1>
        <p class="subtitle">Register to explore opportunities and manage your applications.</p>

        <form action="/user/signup" method="post"
              enctype="multipart/form-data">

            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name"
                       placeholder="Enter your full name" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email"
                       placeholder="Enter your email address" required>
            </div>

            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="tel" id="mobile" name="mobile"
                       pattern="[0-9]{10}" maxlength="10"
                       inputmode="numeric"
                       placeholder="Enter 10-digit mobile number" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password"
                       placeholder="Create a password" required>
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" required>
            </div>

            <div class="gender-group">
                <span class="gender-title">Gender</span>

                <label class="gender-option">
                    <input type="radio" name="gender" value="male" required>
                    Male
                </label>

                <label class="gender-option">
                    <input type="radio" name="gender" value="female">
                    Female
                </label>
            </div>

            <div class="buttons">
                <button type="submit" class="signup">Create Account</button>
                <button type="reset" class="cancel">Clear Form</button>
            </div>

        </form>

        <p class="login-text">
            Already have an account?
            <a href="/user/login">Login here</a>
        </p>

    </div>
</main>

<!-- Footer -->
<footer>
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```