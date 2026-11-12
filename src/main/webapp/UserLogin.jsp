```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>User Login | CareerConnect</title>

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
    color: #334155;
}

/* Navbar */
.navbar {
    width: 100%;
    padding: 17px 7%;
    background: #ffffff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 10px rgba(0,0,0,0.05);
}

.logo {
    color: #1e3a5f;
    font-size: 25px;
    font-weight: 700;
    text-decoration: none;
}

.logo span {
    color: #2563eb;
}

.home-link {
    color: #1e3a5f;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
}

.home-link:hover {
    color: #2563eb;
}

/* Main section */
.main-content {
    flex: 1;
    display: flex;
    min-height: 600px;
}

/* Left panel */
.left {
    flex: 1;
    background: linear-gradient(135deg, #1e3a5f, #2563eb);
    color: #ffffff;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 50px;
    text-align: center;
}

.welcome-icon {
    width: 85px;
    height: 85px;
    border-radius: 50%;
    background: rgba(255,255,255,0.13);
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 40px;
    margin-bottom: 25px;
}

.left h1 {
    font-size: 34px;
    margin-bottom: 15px;
}

.left p {
    font-size: 15px;
    line-height: 1.8;
    max-width: 370px;
    color: #e2e8f0;
}

/* Right panel */
.right {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 20px;
}

.form-box {
    width: 100%;
    max-width: 420px;
    background: #ffffff;
    padding: 40px 35px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15,23,42,0.07);
}

.form-box h2 {
    color: #1e3a5f;
    text-align: center;
    font-size: 27px;
    margin-bottom: 8px;
}

.subtitle {
    color: #64748b;
    font-size: 14px;
    text-align: center;
    margin-bottom: 25px;
}

/* Messages */
.message {
    font-size: 13px;
    text-align: center;
    margin-bottom: 18px;
    color: #dc2626;
    overflow-wrap: anywhere;
}

/* Input fields */
.input-group {
    margin-bottom: 20px;
}

.input-group label {
    display: block;
    font-size: 14px;
    font-weight: 600;
    color: #334155;
    margin-bottom: 8px;
}

.input-group input {
    width: 100%;
    padding: 13px 14px;
    border: 1px solid #cbd5e1;
    border-radius: 7px;
    outline: none;
    font-size: 14px;
    background: #ffffff;
    transition: 0.2s;
}

.input-group input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37,99,235,0.12);
}

/* Forgot password */
.forgot {
    display: block;
    text-align: right;
    font-size: 13px;
    color: #2563eb;
    text-decoration: none;
    margin-top: -8px;
    margin-bottom: 22px;
}

.forgot:hover {
    text-decoration: underline;
}

/* Buttons */
.login-btn,
.back-btn {
    display: block;
    width: 100%;
    padding: 13px;
    border-radius: 7px;
    font-size: 15px;
    font-weight: 600;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    transition: 0.3s;
}

.login-btn {
    background: #1e3a5f;
    color: #ffffff;
    border: 2px solid #1e3a5f;
}

.login-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.extra {
    margin-top: 23px;
    text-align: center;
    font-size: 14px;
    color: #64748b;
}

.extra a {
    color: #2563eb;
    text-decoration: none;
    font-weight: 600;
}

.extra a:hover {
    text-decoration: underline;
}

.back-btn {
    margin-top: 18px;
    background: #ffffff;
    color: #1e3a5f;
    border: 1px solid #cbd5e1;
}

.back-btn:hover {
    background: #f1f5f9;
}

/* Footer */
.footer {
    background: #ffffff;
    border-top: 1px solid #e2e8f0;
    text-align: center;
    padding: 18px;
    color: #64748b;
    font-size: 13px;
}

/* Responsive */
@media (max-width: 768px) {
    .main-content {
        flex-direction: column;
    }

    .left {
        min-height: 260px;
        padding: 35px 20px;
    }

    .left h1 {
        font-size: 27px;
    }

    .right {
        padding: 35px 18px;
    }
}

@media (max-width: 480px) {
    .navbar {
        padding: 15px 5%;
    }

    .logo {
        font-size: 22px;
    }

    .form-box {
        padding: 30px 22px;
    }
}
</style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar">
        <a href="/" class="logo">Career<span>Connect</span></a>
        <a href="/" class="home-link">Home</a>
    </nav>

    <!-- Main Login Section -->
    <main class="main-content">

        <!-- Left Panel -->
        <section class="left">
            <div class="welcome-icon">&#128075;</div>

            <h1>Welcome Back!</h1>

            <p>
                Login to explore new job opportunities, track your
                applications and take the next step in your career
                with CareerConnect.
            </p>
        </section>

        <!-- Right Panel -->
        <section class="right">

            <div class="form-box">

                <h2>User Login</h2>

                <p class="subtitle">
                    Enter your account details to continue.
                </p>

                <div class="message">
                    ${pass} ${fail}
                </div>

                <form action="/user/login" method="post">

                    <div class="input-group">
                        <label for="email">Email Address</label>
                        <input
                            type="email"
                            id="email"
                            name="email"
                            placeholder="Enter your email address"
                            autocomplete="email"
                            required>
                    </div>

                    <div class="input-group">
                        <label for="password">Password</label>
                        <input
                            type="password"
                            id="password"
                            name="password"
                            placeholder="Enter your password"
                            autocomplete="current-password"
                            required>
                    </div>

                    <a href="/user/forgot-password" class="forgot">
                        Forgot Password?
                    </a>

                    <button type="submit" class="login-btn">
                        Login
                    </button>

                </form>

                <div class="extra">
                    Don't have an account?
                    <a href="/user/signup">Create Account</a>
                </div>

                <a href="/" class="back-btn">
                    Back to Home
                </a>

            </div>

        </section>

    </main>

    <!-- Footer -->
    <footer class="footer">
        © 2026 CareerConnect. All Rights Reserved.
    </footer>

</body>
</html>
```