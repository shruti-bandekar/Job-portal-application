```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>View Applications | CareerConnect</title>

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
    text-align: center;
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
    font-size: 25px;
    color: #1e3a5f;
    margin-bottom: 10px;
}

.desc {
    font-size: 14px;
    color: #64748b;
    line-height: 1.6;
    margin-bottom: 25px;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
    gap: 12px;
    text-align: left;
}

label {
    font-size: 13px;
    font-weight: 600;
    color: #334155;
}

select {
    width: 100%;
    padding: 13px 14px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    outline: none;
    background: #ffffff;
    color: #1e293b;
    font-size: 14px;
    cursor: pointer;
    transition: 0.2s;
}

select:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
}

/* Buttons */
button {
    width: 100%;
    padding: 13px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s;
}

.submit {
    margin-top: 8px;
    background: #1e3a5f;
    color: #ffffff;
    border: 1px solid #1e3a5f;
}

.submit:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.back {
    margin-top: 12px;
    background: #ffffff;
    color: #475569;
    border: 1px solid #cbd5e1;
}

.back:hover {
    background: #f1f5f9;
    border-color: #94a3b8;
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

        <div class="icon">📋</div>

        <h2>View Applications</h2>

        <p class="desc">
            Select a job to view the applications submitted by candidates.
        </p>

        <form action="/recruiter/view-application" method="post">

            <label for="jobId">Select Job</label>

            <select name="id" id="jobId" required>

                <option value="" disabled selected>
                    -- Choose a Job Position --
                </option>

                <c:forEach var="job" items="${jobs}">
                    <option value="${job.id}">
                        ${job.title}
                    </option>
                </c:forEach>

            </select>

            <button type="submit" class="submit">
                View Applications
            </button>

        </form>

        <a href="/recruiter/back">
            <button type="button" class="back">
                Back to Dashboard
            </button>
        </a>

    </div>

</main>

<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```