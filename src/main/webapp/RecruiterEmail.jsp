```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    background: #f1f5f9;
    color: #334155;
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
    min-height: calc(100vh - 70px);
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 35px 20px;
}

.container {
    width: 100%;
    max-width: 430px;
    background: #ffffff;
    padding: 38px 32px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.06);
    text-align: center;
}

/* Icon */
.icon {
    width: 65px;
    height: 65px;
    margin: 0 auto 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #eff6ff;
    border-radius: 50%;
    font-size: 29px;
}

h2 {
    color: #1e3a5f;
    font-size: 24px;
    margin-bottom: 10px;
}

.subtitle {
    color: #64748b;
    font-size: 14px;
    line-height: 1.6;
    margin-bottom: 22px;
}

/* Messages */
.message {
    margin-bottom: 15px;
    font-size: 14px;
    color: #dc2626;
    line-height: 1.5;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.input-group {
    text-align: left;
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
    background: #ffffff;
    color: #1e293b;
    font-size: 14px;
    transition: 0.2s;
}

input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
}

input::placeholder {
    color: #94a3b8;
}

/* Button */
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

/* Responsive */
@media (max-width: 480px) {
    .navbar {
        padding: 0 20px;
    }

    .container {
        padding: 30px 22px;
    }

    h2 {
        font-size: 22px;
    }
}
</style>
</head>

<body>

    <nav class="navbar">
        <div class="logo">Career<span>Connect</span></div>
    </nav>

    <main class="main">

        <div class="container">

            <div class="icon">🔐</div>

            <h2>Forgot Password?</h2>

            <p class="subtitle">
                Enter your registered email address to continue
                with the password recovery process.
            </p>

            <div class="message">
                ${fail} ${pass}
            </div>

            <form action="/recruiter/forgot-password" method="post">

                <div class="input-group">
                    <label for="email">Registered Email Address</label>

                    <input type="email"
                           id="email"
                           name="email"
                           placeholder="Enter your email address"
                           required>
                </div>

                <button type="submit">Submit</button>

            </form>

        </div>

    </main>

</body>
</html>
```