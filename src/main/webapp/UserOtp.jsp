```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Verify OTP | CareerConnect</title>

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

/* Main content */
.main-content {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 20px;
}

/* OTP card */
.container {
    width: 100%;
    max-width: 430px;
    background: #ffffff;
    padding: 40px 35px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15,23,42,0.07);
    text-align: center;
}

.otp-icon {
    width: 65px;
    height: 65px;
    margin: 0 auto 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    background: #eff6ff;
    color: #2563eb;
    font-size: 30px;
}

h2 {
    color: #1e3a5f;
    font-size: 26px;
    margin-bottom: 10px;
}

.sub {
    font-size: 14px;
    color: #64748b;
    line-height: 1.6;
    margin-bottom: 22px;
}

/* Messages */
.message {
    font-size: 13px;
    color: #dc2626;
    margin-bottom: 18px;
    overflow-wrap: anywhere;
}

/* OTP input */
.otp-input {
    width: 100%;
    padding: 15px 12px;
    font-size: 23px;
    font-weight: 600;
    letter-spacing: 12px;
    text-align: center;
    border-radius: 8px;
    border: 1px solid #cbd5e1;
    outline: none;
    margin-bottom: 22px;
    color: #1e3a5f;
    background: #ffffff;
    transition: 0.2s;
}

.otp-input::placeholder {
    color: #cbd5e1;
    letter-spacing: 8px;
}

.otp-input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37,99,235,0.12);
}

/* Verify button */
.verify-btn {
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

.verify-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
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

    .container {
        padding: 30px 22px;
    }

    .otp-input {
        font-size: 20px;
        letter-spacing: 9px;
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

        <div class="container">

            <div class="otp-icon">&#128272;</div>

            <h2>Verify OTP</h2>

            <p class="sub">
                Enter the six-digit verification code sent to your
                registered email address.
            </p>

            <div class="message">
                ${pass} ${fail}
            </div>

            <form action="/user/verify-otp" method="post">

                <input type="hidden" name="id" value="${id}">

                <input
                    type="text"
                    name="otp"
                    class="otp-input"
                    id="otp"
                    maxlength="6"
                    minlength="6"
                    pattern="[0-9]{6}"
                    inputmode="numeric"
                    autocomplete="one-time-code"
                    placeholder="------"
                    aria-label="Six-digit OTP"
                    required>

                <button type="submit" class="verify-btn">
                    Verify OTP
                </button>

            </form>

        </div>

    </main>

    <!-- Footer -->
    <footer class="footer">
        © 2026 CareerConnect. All Rights Reserved.
    </footer>

<script>
const otpInput = document.getElementById("otp");

otpInput.addEventListener("input", function() {
    this.value = this.value.replace(/[^0-9]/g, "").slice(0, 6);
});
</script>

</body>
</html>
```