```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Job Seeker Dashboard | CareerConnect</title>

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
    background: #ffffff;
    padding: 17px 7%;
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

.navbar-link {
    color: #1e3a5f;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
}

.navbar-link:hover {
    color: #2563eb;
}

/* Main content */
.main-content {
    flex: 1;
    width: 100%;
    max-width: 1100px;
    margin: 0 auto;
    padding: 45px 25px;
}

.header {
    text-align: center;
    margin-bottom: 15px;
}

.header h1 {
    color: #1e3a5f;
    font-size: 30px;
    margin-bottom: 10px;
}

.header p {
    color: #64748b;
    font-size: 15px;
}

/* Messages */
.message {
    text-align: center;
    margin: 15px 0 25px;
    font-size: 14px;
    color: #dc2626;
    overflow-wrap: anywhere;
}

/* Dashboard cards */
.container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
    gap: 22px;
}

.card {
    background: #ffffff;
    padding: 28px 22px;
    border-radius: 12px;
    border: 1px solid #e2e8f0;
    text-align: center;
    box-shadow: 0 5px 18px rgba(15,23,42,0.05);
    transition: 0.3s ease;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(15,23,42,0.10);
}

.icon {
    width: 58px;
    height: 58px;
    margin: 0 auto 17px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    background: #eff6ff;
    color: #2563eb;
    font-size: 27px;
}

.card h3 {
    color: #1e3a5f;
    font-size: 18px;
    margin-bottom: 9px;
}

.card p {
    color: #64748b;
    font-size: 13px;
    line-height: 1.6;
    min-height: 40px;
    margin-bottom: 18px;
}

/* Card links */
.card-btn {
    display: inline-block;
    min-width: 115px;
    padding: 10px 20px;
    border: 2px solid #1e3a5f;
    border-radius: 7px;
    background: #1e3a5f;
    color: #ffffff;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}

.card-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

/* Prime card */
.prime-card {
    border: 2px solid #eab308;
    background: linear-gradient(180deg, #fffbeb, #ffffff);
}

.prime-card .icon {
    background: #fef3c7;
    color: #b45309;
}

.prime-card .card-btn {
    background: #d99a00;
    border-color: #d99a00;
    color: #ffffff;
}

.prime-card .card-btn:hover {
    background: #ffffff;
    color: #a16207;
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
@media (max-width: 600px) {
    .navbar {
        padding: 15px 5%;
    }

    .logo {
        font-size: 22px;
    }

    .main-content {
        padding: 30px 18px;
    }

    .header h1 {
        font-size: 24px;
    }

    .container {
        grid-template-columns: 1fr;
    }
}
</style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar">
        <a href="/" class="logo">Career<span>Connect</span></a>
        <a href="/logout" class="navbar-link">Logout</a>
    </nav>

    <!-- Dashboard -->
    <main class="main-content">

        <div class="header">
            <h1>Job Seeker Dashboard</h1>
            <p>Manage your profile, explore opportunities and track your applications.</p>
        </div>

        <div class="message">
            ${pass} ${fail}
        </div>

        <div class="container">

            <!-- Prime Membership -->
            <c:if test="${!user.prime}">
                <div class="card prime-card">
                    <div class="icon">&#9733;</div>
                    <h3>Go Prime</h3>
                    <p>Unlock premium features and get better visibility with employers.</p>
                    <a href="/user/buy-prime" class="card-btn">Upgrade Now</a>
                </div>
            </c:if>

            <!-- Jobs -->
            <div class="card">
                <div class="icon">&#128188;</div>
                <h3>Explore Jobs</h3>
                <p>Discover job opportunities that match your skills and interests.</p>
                <a href="/user/view-jobs" class="card-btn">View Jobs</a>
            </div>

            <!-- Applications -->
            <div class="card">
                <div class="icon">&#128221;</div>
                <h3>My Applications</h3>
                <p>Check the status and progress of your job applications.</p>
                <a href="/user/view-application" class="card-btn">View Applications</a>
            </div>

            <!-- Notifications -->
            <div class="card">
                <div class="icon">&#128276;</div>
                <h3>Notifications</h3>
                <p>Stay updated with important alerts and application updates.</p>
                <a href="/user/notifications" class="card-btn">View Updates</a>
            </div>

            <!-- Profile -->
            <div class="card">
                <div class="icon">&#128100;</div>
                <h3>Edit Profile</h3>
                <p>Update your personal details, education and resume information.</p>
                <a href="/user/profile" class="card-btn">Edit Profile</a>
            </div>

            <!-- Logout -->
            <div class="card">
                <div class="icon">&#128682;</div>
                <h3>Logout</h3>
                <p>Securely sign out of your CareerConnect account.</p>
                <a href="/logout" class="card-btn">Logout</a>
            </div>

        </div>

    </main>

    <!-- Footer -->
    <footer class="footer">
        © 2026 CareerConnect. All Rights Reserved.
    </footer>

</body>
</html>
```