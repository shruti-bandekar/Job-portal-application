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
    justify-content: center;
    align-items: center;
    padding: 40px 20px;
}

/* Reset password card */
.card {
    width: 100%;
    max-width: 430px;
    background: #ffffff;
    padding: 40px 35px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15,23,42,0.07);
}

.icon {
    width: 65px;
    height: 65px;
    margin: 0 auto 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    background: #eff6ff;
    color: #2563eb;
    border-radius: 50%;
    font-size: 30px;
}

h2 {
    text-align: center;
    color: #1e3a5f;
    font-size: 26px;
    margin-bottom: 10px;
}

.subtitle {
    text-align: center;
    color: #64748b;
    font-size: 14px;
    line-height: 1.6;
    margin-bottom: 22px;
}

/* Messages */
.message {
    text-align: center;
    font-size: 13px;
    color: #dc2626;
    margin-bottom: 18px;
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
    background: #ffffff;
    font-size: 14px;
    transition: 0.2s;
}

.input-group input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37,99,235,0.12);
}

/* Reset button */
.reset-btn {
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
    margin-top: 5px;
}

.reset-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

/* Back link */
.back-link {
    display: block;
    text-align: center;
    margin-top: 20px;
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
    background: #ffffff;
    border-top: 1px solid #e2e8f0;
    text-align: center;
    padding: 18px;
    color: #64748b;
    font-size: 13px;
}

/* Responsive */
@media (max-width: 480px) {
    .navbar {
        padding: 15px 5%;
    }

    .logo {
        font-size: 22px;
    }

    .card {
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

    <!-- Main Section -->
    <main class="main-content">

        <div class="card">

            <div class="icon">&#128273;</div>

            <h2>Reset Password</h2>

            <p class="subtitle">
                Create a new password for your CareerConnect account.
                Enter the OTP and choose a strong password.
            </p>

            <div class="message">
                ${pass} ${fail}
            </div>

            <form action="/user/reset-password" method="post">

                <input type="hidden" name="id" value="${id}">

                <div class="input-group">
                    <label for="otp">Enter OTP</label>
                    <input
                        type="text"
                        id="otp"
                        name="otp"
                        placeholder="Enter your 6-digit OTP"
                        maxlength="6"
                        minlength="6"
                        pattern="[0-9]{6}"
                        inputmode="numeric"
                        autocomplete="one-time-code"
                        required>
                </div>

                <div class="input-group">
                    <label for="password">New Password</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Enter your new password"
                        minlength="8"
                        autocomplete="new-password"
                        required>
                </div>

                <button type="submit" class="reset-btn">
                    Reset Password
                </button>

            </form>

            <a href="/user/login" class="back-link">
                ← Back to Login
            </a>

        </div>

    </main>

    <!-- Footer -->
    <footer class="footer">
        © 2026 CareerConnect. All Rights Reserved.
    </footer>

<script>
document.getElementById("otp").addEventListener("input", function() {
    this.value = this.value.replace(/[^0-9]/g, "").slice(0, 6);
});
</script>

</body>
</html>
```