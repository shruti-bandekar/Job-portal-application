```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recruiter Login | CareerConnect</title>

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
}

/* Navbar */
.navbar {
    width: 100%;
    height: 70px;
    background: #ffffff;
    display: flex;
    align-items: center;
    padding: 0 8%;
    box-shadow: 0 2px 10px rgba(0,0,0,0.05);
}

.logo {
    font-size: 25px;
    font-weight: 700;
    color: #1e3a5f;
    letter-spacing: -0.5px;
}

.logo span {
    color: #2563eb;
}

/* Main section */
.main {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 40px 20px;
}

.wrapper {
    width: 100%;
    max-width: 900px;
    display: grid;
    grid-template-columns: 1fr 1fr;
    background: #ffffff;
    border-radius: 14px;
    overflow: hidden;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.07);
}

/* Left panel */
.left {
    background: #1e3a5f;
    color: #ffffff;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 45px;
    text-align: center;
}

.left-icon {
    width: 75px;
    height: 75px;
    border-radius: 50%;
    background: rgba(255,255,255,0.12);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 34px;
    margin-bottom: 25px;
}

.left h2 {
    font-size: 27px;
    margin-bottom: 13px;
}

.left p {
    font-size: 14px;
    line-height: 1.8;
    color: #dbeafe;
}

/* Right panel */
.right {
    padding: 42px 38px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

h1 {
    text-align: center;
    margin-bottom: 10px;
    color: #1e3a5f;
    font-size: 27px;
}

.subtitle {
    text-align: center;
    color: #64748b;
    font-size: 14px;
    margin-bottom: 22px;
}

/* Messages */
.message {
    text-align: center;
    font-size: 14px;
    color: #dc2626;
    margin-bottom: 15px;
    line-height: 1.5;
}

/* Form */
form {
    width: 100%;
}

.form-group {
    margin-bottom: 18px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-size: 14px;
    font-weight: 600;
    color: #334155;
}

input {
    width: 100%;
    padding: 13px 14px;
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
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
}

input::placeholder {
    color: #94a3b8;
}

/* Forgot password */
.forgot {
    display: block;
    text-align: right;
    margin-top: -5px;
    margin-bottom: 20px;
    font-size: 13px;
    color: #2563eb;
    text-decoration: none;
}

.forgot:hover {
    text-decoration: underline;
}

/* Buttons */
button {
    width: 100%;
    padding: 13px;
    border: 1px solid #1e3a5f;
    border-radius: 8px;
    background: #1e3a5f;
    color: #ffffff;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.2s;
}

button:hover {
    background: #ffffff;
    color: #1e3a5f;
}

hr {
    margin: 23px 0;
    border: none;
    border-top: 1px solid #e2e8f0;
}

.secondary-btn {
    display: block;
    width: 100%;
    padding: 12px;
    border: 1px solid #1e3a5f;
    border-radius: 8px;
    background: #ffffff;
    color: #1e3a5f;
    text-align: center;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
    transition: 0.2s;
    margin-bottom: 12px;
}

.secondary-btn:hover {
    background: #1e3a5f;
    color: #ffffff;
}

/* Footer */
.footer {
    text-align: center;
    padding: 17px;
    background: #ffffff;
    border-top: 1px solid #e2e8f0;
    color: #64748b;
    font-size: 13px;
}

/* Responsive */
@media (max-width: 768px) {
    .navbar {
        padding: 0 20px;
    }

    .wrapper {
        max-width: 480px;
        grid-template-columns: 1fr;
    }

    .left {
        padding: 28px 22px;
    }

    .left-icon {
        width: 58px;
        height: 58px;
        font-size: 27px;
        margin-bottom: 15px;
    }

    .left h2 {
        font-size: 23px;
    }

    .right {
        padding: 32px 25px;
    }
}

@media (max-width: 400px) {
    .right {
        padding: 28px 20px;
    }
}
</style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">Career<span>Connect</span></div>
    </nav>

    <!-- Login section -->
    <main class="main">

        <div class="wrapper">

            <!-- Left panel -->
            <div class="left">

                <div class="left-icon">💼</div>

                <h2>Welcome Recruiter</h2>

                <p>
                    Manage job postings, track applications
                    and connect with talented candidates
                    through CareerConnect.
                </p>

            </div>

            <!-- Right panel -->
            <div class="right">

                <h1>Recruiter Login</h1>

                <p class="subtitle">
                    Sign in to access your recruiter account.
                </p>

                <div class="message">
                    ${pass} ${fail}
                </div>

                <form action="/recruiter/login" method="post">

                    <div class="form-group">
                        <label for="email">Email Address</label>

                        <input type="email"
                               id="email"
                               name="email"
                               placeholder="Enter your email"
                               required>
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>

                        <input type="password"
                               id="password"
                               name="password"
                               placeholder="Enter your password"
                               required>
                    </div>

                    <a href="/recruiter/forgot-password"
                       class="forgot">
                        Forgot Password?
                    </a>

                    <button type="submit">Login</button>

                </form>

                <hr>

                <a href="/recruiter/signup" class="secondary-btn">
                    Create Account
                </a>

                <a href="/" class="secondary-btn">
                    Back to Home
                </a>

            </div>

        </div>

    </main>

    <!-- Footer -->
    <footer class="footer">
        © 2026 CareerConnect. All Rights Reserved.
    </footer>

</body>
</html>
```