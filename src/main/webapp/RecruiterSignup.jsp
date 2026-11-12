```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Recruiter Signup | CareerConnect</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

body {
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    background: #f1f5f9;
    color: #1e293b;
}

/* Navbar */
.navbar {
    width: 100%;
    padding: 18px 8%;
    background: #ffffff;
    border-bottom: 1px solid #e2e8f0;
}

.logo {
    font-size: 25px;
    font-weight: 700;
    color: #1e3a5f;
    text-decoration: none;
}

/* Main section */
.main-container {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 35px 20px;
}

.signup-card {
    width: 100%;
    max-width: 550px;
    padding: 35px 38px;
    background: #ffffff;
    border: 1px solid #e2e8f0;
    border-radius: 14px;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.07);
}

h1 {
    text-align: center;
    font-size: 26px;
    color: #1e3a5f;
    margin-bottom: 8px;
}

.subtitle {
    text-align: center;
    font-size: 14px;
    color: #64748b;
    margin-bottom: 22px;
}

.message {
    text-align: center;
    font-size: 14px;
    color: #dc2626;
    margin-bottom: 15px;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.form-group {
    display: flex;
    flex-direction: column;
    flex: 1;
    min-width: 0;
}

label {
    font-size: 13px;
    font-weight: 600;
    color: #334155;
    margin-bottom: 7px;
}

input[type="text"],
input[type="email"],
input[type="tel"],
input[type="password"] {
    width: 100%;
    padding: 12px 13px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    outline: none;
    font-size: 14px;
    color: #1e293b;
    background: #ffffff;
    transition: 0.2s;
}

input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
}

input::placeholder {
    color: #94a3b8;
}

/* Two-column row */
.row {
    display: flex;
    gap: 15px;
}

/* Gender */
.gender-section {
    display: flex;
    flex-direction: column;
    gap: 9px;
}

.gender-options {
    display: flex;
    align-items: center;
    gap: 22px;
}

.gender-options label {
    display: flex;
    align-items: center;
    gap: 7px;
    margin: 0;
    font-size: 14px;
    font-weight: 400;
    cursor: pointer;
}

.gender-options input {
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
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s;
}

.signup {
    background: #1e3a5f;
    color: #ffffff;
    border: 1px solid #1e3a5f;
}

.signup:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.cancel {
    background: #ffffff;
    color: #475569;
    border: 1px solid #cbd5e1;
}

.cancel:hover {
    background: #f1f5f9;
    border-color: #94a3b8;
}

/* Login link */
.login-link {
    display: block;
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
    color: #64748b;
    text-decoration: none;
}

.login-link span {
    color: #2563eb;
    font-weight: 600;
}

.login-link:hover span {
    text-decoration: underline;
}

/* Footer */
.footer {
    padding: 17px;
    text-align: center;
    color: #64748b;
    font-size: 13px;
    background: #ffffff;
    border-top: 1px solid #e2e8f0;
}

/* Responsive */
@media (max-width: 550px) {
    .signup-card {
        padding: 28px 22px;
    }

    .row {
        flex-direction: column;
        gap: 15px;
    }
}

@media (max-width: 360px) {
    .buttons {
        flex-direction: column;
    }
}
</style>
</head>

<body>

<nav class="navbar">
    <a href="/" class="logo">CareerConnect</a>
</nav>

<main class="main-container">

    <div class="signup-card">

        <h1>Recruiter Sign Up</h1>

        <p class="subtitle">
            Create your recruiter account and start hiring.
        </p>

        <div class="message">
            ${fail}
        </div>

        <form action="/recruiter/signup" method="post">

            <div class="form-group">
                <label>Full Name</label>
                <input type="text"
                       name="fullname"
                       placeholder="Enter your full name"
                       required>
            </div>

            <div class="form-group">
                <label>Email Address</label>
                <input type="email"
                       name="email"
                       placeholder="Enter your email address"
                       required>
            </div>

            <div class="form-group">
                <label>Mobile Number</label>
                <input type="tel"
                       name="mobile"
                       placeholder="Enter 10-digit mobile number"
                       pattern="[0-9]{10}"
                       maxlength="10"
                       inputmode="numeric"
                       required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password"
                       name="password"
                       placeholder="Create your password"
                       required>
            </div>

            <div class="gender-section">
                <label>Gender</label>

                <div class="gender-options">
                    <label>
                        <input type="radio" name="gender" value="male">
                        Male
                    </label>

                    <label>
                        <input type="radio" name="gender" value="female">
                        Female
                    </label>
                </div>
            </div>

            <div class="row">

                <div class="form-group">
                    <label>Company Name</label>
                    <input type="text"
                           name="companyname"
                           placeholder="Company name"
                           required>
                </div>

                <div class="form-group">
                    <label>Company Location</label>
                    <input type="text"
                           name="companylocation"
                           placeholder="Company location"
                           required>
                </div>

            </div>

            <div class="buttons">
                <button type="submit" class="signup">
                    Create Account
                </button>

                <button type="reset" class="cancel">
                    Clear Form
                </button>
            </div>

        </form>

        <a href="/recruiter/login" class="login-link">
            Already have an account? <span>Back to Login</span>
        </a>

    </div>

</main>

<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```