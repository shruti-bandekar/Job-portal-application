```jsp
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Duration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Experience | CareerConnect</title>

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
    color: #334155;
}

/* Navbar */
.navbar {
    height: 70px;
    width: 100%;
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
    min-height: calc(100vh - 70px);
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 30px 20px;
}

.card {
    width: 100%;
    max-width: 460px;
    background: #ffffff;
    padding: 40px 35px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.06);
    text-align: center;
}

.card h2 {
    color: #1e3a5f;
    font-size: 25px;
    margin-bottom: 12px;
}

.subtitle {
    color: #64748b;
    font-size: 14px;
    line-height: 1.6;
    margin-bottom: 30px;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
    gap: 28px;
}

/* Radio buttons */
.radio-group {
    display: flex;
    justify-content: center;
    gap: 18px;
}

.radio-group input {
    position: absolute;
    opacity: 0;
    pointer-events: none;
}

.radio-label {
    width: 120px;
    padding: 13px 20px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    color: #334155;
    background: #ffffff;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.2s;
}

.radio-label:hover {
    border-color: #2563eb;
    color: #1e3a5f;
}

.radio-group input:checked + .radio-label {
    background: #1e3a5f;
    color: #ffffff;
    border-color: #1e3a5f;
}

.radio-group input:focus-visible + .radio-label {
    outline: 3px solid rgba(37, 99, 235, 0.25);
    outline-offset: 3px;
}

/* Buttons */
.buttons {
    display: flex;
    justify-content: center;
    gap: 12px;
}

button {
    min-width: 120px;
    padding: 12px 20px;
    border: 1px solid #1e3a5f;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.2s;
}

.submit-btn {
    background: #1e3a5f;
    color: #ffffff;
}

.submit-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.reset-btn {
    background: #ffffff;
    color: #1e3a5f;
}

.reset-btn:hover {
    background: #1e3a5f;
    color: #ffffff;
}

/* Responsive */
@media (max-width: 480px) {
    .navbar {
        padding: 0 20px;
    }

    .card {
        padding: 30px 22px;
    }

    .card h2 {
        font-size: 22px;
    }

    .radio-group {
        gap: 12px;
    }

    .radio-label {
        width: 105px;
    }

    .buttons {
        flex-direction: column;
    }

    button {
        width: 100%;
    }
}
</style>
</head>

<body>

    <nav class="navbar">
        <div class="logo">Career<span>Connect</span></div>
    </nav>

    <main class="main">
        <div class="card">

            <h2>Are You Experienced?</h2>
            <p class="subtitle">
                Let us know about your professional background
                so we can guide you through the right application process.
            </p>

            <form action="/user/experience" method="post">

                <input type="hidden" name="id" value="${id}">

                <div class="radio-group">

                    <input type="radio" id="yes"
                           name="experience" value="yes" required>
                    <label for="yes" class="radio-label">Yes</label>

                    <input type="radio" id="no"
                           name="experience" value="no" required>
                    <label for="no" class="radio-label">No</label>

                </div>

                <div class="buttons">
                    <button type="submit" class="submit-btn">
                        Submit
                    </button>

                    <button type="reset" class="reset-btn">
                        Cancel
                    </button>
                </div>

            </form>

        </div>
    </main>

</body>
</html>
```