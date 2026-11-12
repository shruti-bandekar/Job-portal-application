```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Forgot Password | CareerConnect</title>

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
    padding: 18px 7%;
    background: #ffffff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 10px rgba(0,0,0,0.05);
}

.logo {
    font-size: 25px;
    font-weight: 700;
    color: #1e3a5f;
    text-decoration: none;
}

.logo span {
    color: #2563eb;
}

.home-link {
    text-decoration: none;
    color: #1e3a5f;
    font-weight: 600;
    font-size: 14px;
}

.home-link:hover {
    color: #2563eb;
}

/* Main section */
.main-content {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 20px;
}

.container {
    width: 100%;
    max-width: 430px;
    background: #ffffff;
    padding: 40px 35px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.07);
}

.icon {
    width: 60px;
    height: 60px;
    margin: 0 auto 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #eff6ff;
    color: #2563eb;
    border-radius: 50%;
    font-size: 27px;
}

h2 {
    text-align: center;
    color: #1e3a5f;
    font-size: 25px;
    margin-bottom: 10px;
}

.description {
    text-align: center;
    color: #64748b;
    font-size: 14px;
    line-height: 1.6;
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

/* Form */
.input-group {
    margin-bottom: 22px;
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
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
}

/* Submit button */
.submit-btn {
    width: 100%;
    padding: 13px;
    border: 2px solid #1e3a5f;
    border-radius: 7px;
    background: #1e3a5f;
    color: #ffffff;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s;
}

.submit-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

/* Back link */
.back-link {
    display: block;
    text-align: center;
    margin-top: 22px;
    color: #2563eb;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
}

.back-link:hover {
    text-decoration: underline;
}

/* Footer */
.footer {
    text-align: center;
    padding: 18px;
    background: #ffffff;
    color: #64748b;
    font-size: 13px;
    border-top: 1px solid #e2e8f0;
}

@media (max-width: 480px) {
    .container {
        padding: 30px 22px;
    }

    .navbar {
        padding: 16px 5%;
    }

    .logo {
        font-size: 22px;
    }
}
</style>
</head>

<body>

    <nav class="navbar">
        <a href="/" class="logo">Career<span>Connect</span></a>
        <a href="/" class="home-link">Home</a>
    </nav>

    <main class="main-content">

        <div class="container">

            <div class="icon">&#128274;</div>

            <h2>Forgot Password?</h2>

            <p class="description">
                Don't worry! Enter your registered email address
                and we'll help you reset your password.
            </p>

            <div class="message">
                ${fail} ${pass}
            </div>

            <form action="/user/forgot-password" method="post">

                <div class="input-group">
                    <label for="email">Email Address</label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Enter your registered email"
                        autocomplete="email"
                        required>
                </div>

                <button type="submit" class="submit-btn">
                    Submit
                </button>

            </form>

            <a href="/user/login" class="back-link">
                ← Back to Login
            </a>

        </div>

    </main>

    <footer class="footer">
        © 2026 CareerConnect. All Rights Reserved.
    </footer>

</body>
</html>
```