```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Schedule Interview | CareerConnect</title>

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
    max-width: 440px;
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
    font-size: 25px;
    color: #1e3a5f;
    margin-bottom: 10px;
}

.desc {
    text-align: center;
    font-size: 14px;
    line-height: 1.6;
    color: #64748b;
    margin-bottom: 25px;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.input-group {
    display: flex;
    flex-direction: column;
    gap: 8px;
}

label {
    font-size: 13px;
    font-weight: 600;
    color: #334155;
}

input[type="datetime-local"] {
    width: 100%;
    padding: 13px 12px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    outline: none;
    font-size: 14px;
    color: #1e293b;
    background: #ffffff;
    transition: 0.2s;
}

input[type="datetime-local"]:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
}

/* Button */
.schedule-btn {
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
    transition: 0.3s;
}

.schedule-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

/* Footer */
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

        <div class="icon">📅</div>

        <h2>Schedule Interview</h2>

        <p class="desc">
            Select a suitable date and time to schedule the candidate's interview.
        </p>

        <form action="/recruiter/schedule" method="post">

            <input type="hidden" name="id" value="${id}">

            <div class="input-group">
                <label for="interviewDate">Interview Date & Time</label>

                <input type="datetime-local"
                       id="interviewDate"
                       name="interviewDate"
                       required>
            </div>

            <button type="submit" class="schedule-btn">
                Schedule Interview
            </button>

        </form>

    </div>

</main>

<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

<script>
/* Prevent selecting a past date and time */
const interviewDate = document.getElementById("interviewDate");

const now = new Date();
now.setMinutes(now.getMinutes() - now.getTimezoneOffset());

interviewDate.min = now.toISOString().slice(0, 16);
</script>

</body>
</html>
```