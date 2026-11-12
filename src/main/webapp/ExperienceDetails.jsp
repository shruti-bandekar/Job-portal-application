```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apply Experience | CareerConnect</title>

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
    padding: 40px 20px;
}

.container {
    width: 100%;
    max-width: 520px;
    background: #ffffff;
    padding: 38px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.06);
}

.heading {
    text-align: center;
    margin-bottom: 30px;
}

.heading h1 {
    color: #1e3a5f;
    font-size: 25px;
    margin-bottom: 9px;
}

.heading p {
    color: #64748b;
    font-size: 14px;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
    gap: 21px;
}

.input-group {
    display: flex;
    flex-direction: column;
    gap: 8px;
}

label {
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
    margin-top: 8px;
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
@media (max-width: 600px) {
    .navbar {
        padding: 0 20px;
    }

    .container {
        padding: 28px 22px;
    }

    .heading h1 {
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

            <div class="heading">
                <h1>Experience Details</h1>
                <p>Enter your professional experience to continue your application.</p>
            </div>

            <form action="/user/experience/apply" method="post">

                <input type="hidden" name="id" value="${id}">

                <div class="input-group">
                    <label for="years">Years of Experience</label>
                    <input type="number" id="years" name="years"
                           min="0" step="1" required
                           placeholder="Enter years of experience">
                </div>

                <div class="input-group">
                    <label for="description">Previous Role Description</label>
                    <input type="text" id="description" name="description"
                           required maxlength="255"
                           placeholder="Enter your previous role">
                </div>

                <div class="input-group">
                    <label for="notice">Notice Period Till</label>
                    <input type="date" id="notice" name="notice" required>
                </div>

                <button type="submit">Apply Now</button>

            </form>

        </div>
    </main>

</body>
</html>
```