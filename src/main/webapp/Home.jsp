```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Job Portal | Home</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    min-height: 100vh;
    background: #f4f7fc;
    color: #1e293b;
}

/* Navbar */
.navbar {
    height: 75px;
    padding: 0 8%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #ffffff;
    box-shadow: 0 2px 15px rgba(0,0,0,0.06);
}

.logo {
    font-size: 25px;
    font-weight: 750;
    color: #2563eb;
    letter-spacing: -1px;
}

.logo span {
    color: #172554;
}

.nav-tag {
    color: #64748b;
    font-size: 14px;
}

/* Hero Section */
.hero {
    text-align: center;
    padding: 75px 20px 45px;
    background: linear-gradient(135deg, #eff6ff, #e0e7ff);
}

.hero h1 {
    font-size: 42px;
    font-weight: 750;
    color: #172554;
    margin-bottom: 15px;
}

.hero h1 span {
    color: #2563eb;
}

.hero p {
    font-size: 16px;
    color: #64748b;
    max-width: 620px;
    margin: auto;
    line-height: 1.7;
}

/* Message */
.message {
    text-align: center;
    margin: 20px auto 0;
    color: #15803d;
    font-weight: 600;
}

/* Login Section */
.login-section {
    padding: 45px 8% 75px;
    text-align: center;
}

.section-title {
    font-size: 27px;
    color: #172554;
    margin-bottom: 10px;
}

.section-subtitle {
    color: #64748b;
    margin-bottom: 35px;
    font-size: 15px;
}

/* Cards */
.cards {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 25px;
    max-width: 1050px;
    margin: auto;
}

.card {
    background: #ffffff;
    padding: 35px 25px;
    border-radius: 16px;
    box-shadow: 0 5px 22px rgba(15, 23, 42, 0.06);
    border: 1px solid #e8edf5;
    transition: 0.3s ease;
}

.card:hover {
    transform: translateY(-8px);
    box-shadow: 0 15px 30px rgba(15, 23, 42, 0.12);
}

.icon {
    width: 65px;
    height: 65px;
    margin: 0 auto 20px;
    border-radius: 18px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 30px;
}

.admin-icon {
    background: #dbeafe;
}

.recruiter-icon {
    background: #dcfce7;
}

.user-icon {
    background: #ffedd5;
}

.card h2 {
    font-size: 21px;
    margin-bottom: 12px;
    color: #1e293b;
}

.card p {
    color: #64748b;
    font-size: 14px;
    line-height: 1.6;
    min-height: 45px;
    margin-bottom: 25px;
}

/* Buttons */
.btn {
    display: block;
    width: 100%;
    padding: 13px;
    border-radius: 9px;
    text-decoration: none;
    color: white;
    font-size: 15px;
    font-weight: 600;
    transition: 0.3s;
}

/* All Login Buttons - Same Minimal Color */
.admin-btn,
.recruiter-btn,
.user-btn {
    background: #2563eb;
    color: #ffffff;
}

.btn:hover {
    background: #1d4ed8;
    filter: none;
    transform: translateY(-2px);
}

/* Footer */
.footer {
    text-align: center;
    padding: 22px;
    background: #ffffff;
    color: #94a3b8;
    font-size: 13px;
    border-top: 1px solid #e8edf5;
}

/* Responsive */
@media (max-width: 850px) {
    .cards {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media (max-width: 600px) {
    .navbar {
        padding: 0 5%;
    }

    .hero {
        padding: 55px 20px 35px;
    }

    .hero h1 {
        font-size: 30px;
    }

    .cards {
        grid-template-columns: 1fr;
    }

    .login-section {
        padding: 35px 6% 50px;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="logo">Career<span>Connect</span></div>
    <div class="nav-tag">Your Career. Your Future.</div>
</nav>

<!-- Hero Section -->
<section class="hero">
    <h1>Find Your <span>Future</span> With Us</h1>
    <p>
        Welcome to CareerConnect — a platform that brings job seekers
        and recruiters together. Explore opportunities, discover talent,
        and take the next step in your career.
    </p>
</section>

<!-- Login Message -->
<div class="message">
    ${pass} ${fail}
</div>

<!-- Login Options -->
<section class="login-section">

    <h2 class="section-title">Welcome to Our Job Portal</h2>
    <p class="section-subtitle">
        Select your role to continue
    </p>

    <div class="cards">

        <!-- Admin -->
        <div class="card">
            <div class="icon admin-icon">⚙️</div>
            <h2>Administrator</h2>
            <p>
                Manage users, recruiters, and job portal activities
                through the administration panel.
            </p>
            <a href="/admin/login" class="btn admin-btn">
                Admin Login
            </a>
        </div>

        <!-- Recruiter -->
        <div class="card">
            <div class="icon recruiter-icon">🏢</div>
            <h2>Recruiter</h2>
            <p>
                Connect with talented candidates, post job openings,
                and manage applications.
            </p>
            <a href="/recruiter/login" class="btn recruiter-btn">
                Recruiter Login
            </a>
        </div>

        <!-- Job Seeker -->
        <div class="card">
            <div class="icon user-icon">💼</div>
            <h2>Job Seeker</h2>
            <p>
                Explore job opportunities, apply for positions,
                and move closer to your career goals.
            </p>
            <a href="/user/login" class="btn user-btn">
                Job Seeker Login
            </a>
        </div>

    </div>
</section>

<!-- Footer -->
<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```