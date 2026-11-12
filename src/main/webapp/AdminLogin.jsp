```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Login | CareerConnect</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    min-height: 100vh;
    background: #f1f5f9;
    display: flex;
    flex-direction: column;
    color: #1e293b;
}

/* Navbar */
.navbar {
    height: 72px;
    background: #ffffff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 8%;
    box-shadow: 0 2px 12px rgba(0,0,0,0.05);
}

.logo {
    font-size: 24px;
    font-weight: 750;
    color: #1e3a5f;
}

.logo span {
    color: #2563eb;
}

.nav-label {
    font-size: 13px;
    font-weight: 600;
    color: #1e3a5f;
    background: #eaf1fc;
    padding: 8px 16px;
    border-radius: 20px;
}

/* Login Section */
.login-section {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 20px;
}

.login-card {
    width: 100%;
    max-width: 410px;
    background: #ffffff;
    padding: 38px 35px;
    border-radius: 16px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 10px 35px rgba(15, 23, 42, 0.07);
}

/* Login Header */
.login-icon {
    width: 62px;
    height: 62px;
    margin: 0 auto 20px;
    border-radius: 16px;
    background: #eaf1fc;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 29px;
}

.login-header {
    text-align: center;
    margin-bottom: 28px;
}

.login-header h1 {
    font-size: 26px;
    color: #172554;
    margin-bottom: 9px;
}

.login-header p {
    font-size: 14px;
    color: #64748b;
}

/* Messages */
.message {
    font-size: 13px;
    text-align: center;
    margin-bottom: 15px;
    color: #dc2626;
    font-weight: 500;
}

/* Form */
.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-size: 14px;
    font-weight: 600;
    color: #334155;
    margin-bottom: 9px;
}

input {
    width: 100%;
    height: 46px;
    padding: 0 14px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    outline: none;
    font-size: 14px;
    color: #1e293b;
    background: #ffffff;
    transition: 0.25s;
}

input::placeholder {
    color: #94a3b8;
}

input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
}

/* Buttons */
.login-btn {
    width: 100%;
    height: 46px;
    margin-top: 5px;
    background: #1e3a5f;
    color: #ffffff;
    border: 1px solid #1e3a5f;
    border-radius: 8px;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.25s;
}

.login-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

/* Back Link */
.back-link {
    display: block;
    text-align: center;
    margin-top: 22px;
    text-decoration: none;
    color: #64748b;
    font-size: 14px;
    font-weight: 500;
    transition: 0.2s;
}

.back-link:hover {
    color: #2563eb;
}

/* Footer */
.footer {
    text-align: center;
    padding: 20px;
    color: #94a3b8;
    font-size: 13px;
}

/* Responsive */
@media (max-width: 480px) {
    .navbar {
        padding: 0 5%;
    }

    .login-card {
        padding: 30px 23px;
    }

    .login-header h1 {
        font-size: 23px;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="logo">Career<span>Connect</span></div>
    <div class="nav-label">ADMIN PORTAL</div>
</nav>

<!-- Login Form -->
<section class="login-section">

    <div class="login-card">

        <div class="login-icon">⚙️</div>

        <div class="login-header">
            <h1>Admin Login</h1>
            <p>Sign in to access your administration panel</p>
        </div>

        <div class="message">
            ${pass} ${fail}
        </div>

        <form action="/admin/login" method="post">

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email"
                    placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password"
                    placeholder="Enter your password" required>
            </div>

            <button type="submit" class="login-btn">
                Sign In
            </button>

        </form>

        <a href="/" class="back-link">
            &#8592; Back to Home
        </a>

    </div>

</section>

<!-- Footer -->
<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```