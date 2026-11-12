```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard | CareerConnect</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    min-height: 100vh;
    background: #f1f5f9;
    color: #1e293b;
}

/* Navbar */
.navbar {
    height: 72px;
    background: #ffffff;
    padding: 0 8%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    box-shadow: 0 2px 12px rgba(0,0,0,0.05);
}

.logo {
    font-size: 24px;
    font-weight: 750;
    color: #1e3a5f;
}

.logo span {
    color: #2563eb;
}

.admin-label {
    background: #eaf1fc;
    color: #1e3a5f;
    padding: 8px 16px;
    border-radius: 20px;
    font-size: 13px;
    font-weight: 600;
}

/* Main Content */
.main-container {
    max-width: 1050px;
    margin: 65px auto;
    padding: 0 25px;
}

/* Welcome Section */
.welcome-section {
    background: linear-gradient(120deg, #122b49, #24466d);
    padding: 38px 40px;
    border-radius: 16px;
    color: white;
    margin-bottom: 38px;
    box-shadow: 0 8px 25px rgba(18, 43, 73, 0.12);
}

.welcome-section .tag {
    color: #bfdbfe;
    font-size: 12px;
    font-weight: 600;
    letter-spacing: 1.5px;
    margin-bottom: 14px;
}

.welcome-section h1 {
    font-size: 31px;
    margin-bottom: 12px;
}

.welcome-section p {
    color: #d5e2f1;
    font-size: 15px;
    line-height: 1.7;
    max-width: 600px;
}

/* Section Heading */
.section-heading {
    margin-bottom: 22px;
}

.section-heading h2 {
    color: #172554;
    font-size: 23px;
    margin-bottom: 7px;
}

.section-heading p {
    color: #64748b;
    font-size: 14px;
}

/* Action Cards */
.card-container {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 24px;
}

.card {
    background: #ffffff;
    padding: 28px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    text-decoration: none;
    display: flex;
    align-items: center;
    gap: 20px;
    transition: 0.3s ease;
    box-shadow: 0 5px 18px rgba(15, 23, 42, 0.04);
}

.card:hover {
    transform: translateY(-5px);
    border-color: #bfdbfe;
    box-shadow: 0 12px 25px rgba(15, 23, 42, 0.09);
}

.icon-box {
    min-width: 58px;
    height: 58px;
    background: #eaf1fc;
    color: #1e3a5f;
    border-radius: 13px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 26px;
}

.card-content {
    flex: 1;
}

.card-content h3 {
    font-size: 17px;
    color: #1e293b;
    margin-bottom: 7px;
}

.card-content p {
    color: #64748b;
    font-size: 13px;
    line-height: 1.5;
}

.arrow {
    font-size: 22px;
    color: #94a3b8;
    transition: 0.3s;
}

.card:hover .arrow {
    color: #2563eb;
    transform: translateX(4px);
}

/* Footer */
.footer {
    text-align: center;
    padding: 22px;
    color: #94a3b8;
    font-size: 13px;
    margin-top: 70px;
}

/* Responsive */
@media (max-width: 650px) {
    .navbar {
        padding: 0 5%;
    }

    .main-container {
        margin: 35px auto;
        padding: 0 18px;
    }

    .welcome-section {
        padding: 28px 23px;
    }

    .welcome-section h1 {
        font-size: 25px;
    }

    .card-container {
        grid-template-columns: 1fr;
    }

    .card {
        padding: 22px;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="logo">Career<span>Connect</span></div>
    <div class="admin-label">ADMIN PANEL</div>
</nav>

<!-- Main Dashboard -->
<div class="main-container">

    <!-- Welcome Section -->
    <section class="welcome-section">
        <div class="tag">CAREERCONNECT MANAGEMENT</div>
        <h1>Welcome, Administrator!</h1>
        <p>
            Manage job postings and keep the platform organized.
            Review submitted opportunities and ensure quality
            job listings for candidates.
        </p>
    </section>

    <!-- Dashboard Actions -->
    <div class="section-heading">
        <h2>Dashboard Overview</h2>
        <p>Choose an action to manage your portal.</p>
    </div>

    <div class="card-container">

        <!-- Approve Jobs -->
        <a href="/admin/view-jobs" class="card">
            <div class="icon-box">✓</div>

            <div class="card-content">
                <h3>Approve Jobs</h3>
                <p>
                    Review job postings submitted by recruiters
                    and manage their approval.
                </p>
            </div>

            <div class="arrow">→</div>
        </a>

        <!-- Logout -->
        <a href="/logout" class="card">
            <div class="icon-box">↪</div>

            <div class="card-content">
                <h3>Logout</h3>
                <p>
                    Securely sign out of your administrator
                    account.
                </p>
            </div>

            <div class="arrow">→</div>
        </a>

    </div>

</div>

<!-- Footer -->
<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```