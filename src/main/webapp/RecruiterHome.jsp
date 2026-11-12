```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recruiter Dashboard | CareerConnect</title>

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
    display: flex;
    flex-direction: column;
}

/* Navbar */
.navbar {
    width: 100%;
    height: 70px;
    background: #ffffff;
    display: flex;
    align-items: center;
    justify-content: space-between;
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

.nav-text {
    color: #64748b;
    font-size: 14px;
}

/* Main content */
.main {
    flex: 1;
    width: 100%;
    max-width: 1100px;
    margin: 0 auto;
    padding: 55px 25px;
}

.welcome {
    margin-bottom: 30px;
}

.welcome h1 {
    color: #1e3a5f;
    font-size: 29px;
    margin-bottom: 10px;
}

.welcome p {
    color: #64748b;
    font-size: 15px;
}

/* Messages */
.message {
    margin-bottom: 20px;
    color: #166534;
    font-size: 14px;
    line-height: 1.5;
}

/* Dashboard cards */
.dashboard {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 22px;
}

.dashboard a {
    text-decoration: none;
    color: inherit;
}

.card {
    min-height: 155px;
    padding: 27px;
    background: #ffffff;
    border: 1px solid #e2e8f0;
    border-radius: 12px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    box-shadow: 0 5px 18px rgba(15, 23, 42, 0.04);
    transition: 0.2s;
}

.card:hover {
    transform: translateY(-4px);
    border-color: #93c5fd;
    box-shadow: 0 10px 24px rgba(15, 23, 42, 0.08);
}

.card-icon {
    width: 42px;
    height: 42px;
    border-radius: 9px;
    background: #eff6ff;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 21px;
    margin-bottom: 18px;
}

.card h2 {
    color: #1e3a5f;
    font-size: 18px;
    margin-bottom: 7px;
}

.card p {
    color: #64748b;
    font-size: 13px;
    line-height: 1.5;
}

.card-arrow {
    color: #2563eb;
    font-size: 20px;
    align-self: flex-end;
}

/* Footer */
.footer {
    text-align: center;
    padding: 18px;
    color: #64748b;
    font-size: 13px;
    background: #ffffff;
    border-top: 1px solid #e2e8f0;
}

/* Responsive */
@media (max-width: 600px) {
    .navbar {
        padding: 0 20px;
    }

    .nav-text {
        display: none;
    }

    .main {
        padding: 35px 18px;
    }

    .welcome h1 {
        font-size: 24px;
    }

    .dashboard {
        grid-template-columns: 1fr;
        gap: 16px;
    }

    .card {
        min-height: 140px;
    }
}
</style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">Career<span>Connect</span></div>
        <div class="nav-text">Recruiter Portal</div>
    </nav>

    <!-- Dashboard -->
    <main class="main">

        <div class="welcome">
            <h1>Recruiter Dashboard</h1>
            <p>Manage your job postings and track candidate applications.</p>
        </div>

        <div class="message">
            ${pass} ${fail}
        </div>

        <div class="dashboard">

            <a href="/recruiter/add-job">
                <div class="card">
                    <div>
                        <div class="card-icon">➕</div>
                        <h2>Add Job</h2>
                        <p>Create and publish a new job opportunity.</p>
                    </div>
                    <div class="card-arrow">→</div>
                </div>
            </a>

            <a href="/recruiter/view-jobs">
                <div class="card">
                    <div>
                        <div class="card-icon">💼</div>
                        <h2>View Jobs</h2>
                        <p>View and manage your published job listings.</p>
                    </div>
                    <div class="card-arrow">→</div>
                </div>
            </a>

            <a href="/recruiter/view-applications">
                <div class="card">
                    <div>
                        <div class="card-icon">👥</div>
                        <h2>Applications</h2>
                        <p>Review applications submitted by candidates.</p>
                    </div>
                    <div class="card-arrow">→</div>
                </div>
            </a>

            <a href="/logout">
                <div class="card">
                    <div>
                        <div class="card-icon">↪</div>
                        <h2>Logout</h2>
                        <p>Securely sign out of your recruiter account.</p>
                    </div>
                    <div class="card-arrow">→</div>
                </div>
            </a>

        </div>

    </main>

    <!-- Footer -->
    <footer class="footer">
        © 2026 CareerConnect. All Rights Reserved.
    </footer>

</body>
</html>
```