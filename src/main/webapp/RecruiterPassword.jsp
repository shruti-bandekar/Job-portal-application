```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reset Password | CareerConnect</title>

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
    padding: 40px 20px;
}

.card {
    width: 100%;
    max-width: 420px;
    padding: 38px 32px;
    background: #ffffff;
    border: 1px solid #e2e8f0;
    border-radius: 14px;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.07);
}

.icon {
    width: 62px;
    height: 62px;
    margin: 0 auto 18px;
    display: flex;
    justify-content: center;
    align-items: center;
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

.message {
    text-align: center;
    font-size: 14px;
    color: #dc2626;
    margin-bottom: 15px;
}

.desc {
    text-align: center;
    font-size: 14px;
    line-height: 1.6;
    color: #64748b;
    margin-bottom: 24px;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

label {
    font-size: 13px;
    font-weight: 600;
    color: #334155;
    margin-bottom: -8px;
}

.input {
    display: flex;
    align-items: center;
    gap: 10px;
    padding: 12px 14px;
    border-radius: 8px;
    border: 1px solid #cbd5e1;
    transition: 0.2s;
    background: #ffffff;
}

.input:focus-within {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
}

.input span {
    font-size: 17px;
    color: #64748b;
}

.input input {
    border: none;
    outline: none;
    width: 100%;
    font-size: 14px;
    color: #1e293b;
    background: transparent;
}

.input input::placeholder {
    color: #94a3b8;
}

.hint {
    font-size: 12px;
    color: #64748b;
    line-height: 1.5;
    margin-top: -8px;
}

.reset-btn {
    margin-top: 5px;
    padding: 13px;
    border: 1px solid #1e3a5f;
    border-radius: 8px;
    background: #1e3a5f;
    color: #ffffff;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s;
}

.reset-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.footer {
    padding: 17px;
    text-align: center;
    color: #64748b;
    font-size: 13px;
    background: #ffffff;
    border-top: 1px solid #e2e8f0;
}

/* Responsive */
@media (max-width: 480px) {
    .card {
        padding: 30px 22px;
    }
}
</style>
</head>

<body>

<nav class="navbar">
    <a href="/" class="logo">CareerConnect</a>
</nav>

<main class="main-container">

    <div class="card">

        <div class="icon">🔒</div>

        <h2>Reset Password</h2>

        <div class="message">
            ${pass} ${fail}
        </div>

        <p class="desc">
            Verify your OTP and create a new password for your account.
        </p>

        <form action="/recruiter/reset-password" method="post">

            <input type="hidden" name="id" value="${id}">

            <label>Verification OTP</label>
            <div class="input">
                <span>✉</span>
                <input type="text"
                       name="otp"
                       placeholder="Enter your OTP"
                       inputmode="numeric"
                       maxlength="6"
                       pattern="[0-9]{6}"
                       required>
            </div>

            <label>New Password</label>
            <div class="input">
                <span>🔑</span>
                <input type="password"
                       name="password"
                       id="password"
                       placeholder="Enter new password"
                       minlength="8"
                       required>
            </div>

            <div class="hint">
                Use at least 8 characters, including a combination of letters and numbers.
            </div>

            <button type="submit" class="reset-btn">
                Reset Password
            </button>

        </form>

    </div>

</main>

<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```