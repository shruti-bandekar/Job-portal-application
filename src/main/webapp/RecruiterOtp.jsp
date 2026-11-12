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
    text-align: center;
}

.otp-icon {
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
    color: #1e3a5f;
    font-size: 25px;
    margin-bottom: 10px;
}

.desc {
    color: #64748b;
    font-size: 14px;
    line-height: 1.6;
    margin-bottom: 22px;
}

.message {
    font-size: 14px;
    margin-bottom: 15px;
    color: #dc2626;
}

/* OTP inputs */
.otp-input {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-bottom: 22px;
}

.otp-input input {
    width: 45px;
    height: 52px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    outline: none;
    text-align: center;
    font-size: 21px;
    font-weight: 600;
    color: #1e3a5f;
    background: #ffffff;
    transition: 0.2s;
}

.otp-input input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
}

/* Buttons */
.verify-btn {
    width: 100%;
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

.verify-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.resend {
    display: inline-block;
    margin-top: 18px;
    color: #2563eb;
    font-size: 14px;
    font-weight: 600;
    text-decoration: none;
    cursor: pointer;
}

.resend:hover {
    text-decoration: underline;
}

.resend.disabled {
    color: #94a3b8;
    pointer-events: none;
    cursor: not-allowed;
}

.footer {
    padding: 17px;
    text-align: center;
    color: #64748b;
    font-size: 13px;
    background: #ffffff;
    border-top: 1px solid #e2e8f0;
}

@media (max-width: 480px) {
    .card {
        padding: 30px 20px;
    }

    .otp-input {
        gap: 6px;
    }

    .otp-input input {
        width: 40px;
        height: 48px;
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

        <div class="otp-icon">✉</div>

        <h2>Verify OTP</h2>

        <div class="message">
            ${pass} ${fail}
        </div>

        <p class="desc">
            Enter the 6-digit verification code sent to your registered email address.
        </p>

        <form action="/recruiter/verify-otp" method="post" id="otpForm">

            <input type="hidden" name="id" value="${id}">

            <div class="otp-input">
                <input type="text" maxlength="1" inputmode="numeric"
                       autocomplete="one-time-code" aria-label="OTP digit 1" required>
                <input type="text" maxlength="1" inputmode="numeric"
                       aria-label="OTP digit 2" required>
                <input type="text" maxlength="1" inputmode="numeric"
                       aria-label="OTP digit 3" required>
                <input type="text" maxlength="1" inputmode="numeric"
                       aria-label="OTP digit 4" required>
                <input type="text" maxlength="1" inputmode="numeric"
                       aria-label="OTP digit 5" required>
                <input type="text" maxlength="1" inputmode="numeric"
                       aria-label="OTP digit 6" required>
            </div>

            <input type="hidden" name="otp" id="finalOtp">

            <button type="submit" class="verify-btn">
                Verify OTP
            </button>

        </form>

        <a href="/recruiter/resend-otp/${id}"
           id="resendButton" class="resend disabled"
           aria-disabled="true">
            Resend OTP (30s)
        </a>

    </div>

</main>

<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

<script>
const inputs = document.querySelectorAll(".otp-input input");
const finalOtp = document.getElementById("finalOtp");
const otpForm = document.getElementById("otpForm");
const resendButton = document.getElementById("resendButton");

let timer;

function updateOTP() {
    let otp = "";

    inputs.forEach(input => {
        otp += input.value;
    });

    finalOtp.value = otp;
}

/* OTP input handling */
inputs.forEach((input, index) => {

    input.addEventListener("input", () => {

        input.value = input.value.replace(/[^0-9]/g, "").slice(0, 1);

        if (input.value && index < inputs.length - 1) {
            inputs[index + 1].focus();
        }

        updateOTP();
