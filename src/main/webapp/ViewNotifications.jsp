```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Notifications | CareerConnect</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

body {
    background: #f1f5f9;
    min-height: 100vh;
    color: #1e293b;
}

/* Navbar */
.navbar {
    background: #ffffff;
    padding: 18px 7%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #e2e8f0;
}

.logo {
    color: #1e3a5f;
    font-size: 23px;
    font-weight: 700;
    text-decoration: none;
}

.nav-link {
    color: #1e3a5f;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
}

.nav-link:hover {
    color: #2563eb;
}

/* Main Section */
.main-container {
    max-width: 850px;
    margin: 45px auto;
    padding: 0 20px;
}

.heading {
    margin-bottom: 25px;
}

.heading h1 {
    font-size: 28px;
    color: #1e3a5f;
    margin-bottom: 7px;
}

.heading p {
    color: #64748b;
    font-size: 14px;
}

/* Notification Cards */
.notification-list {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.notification-card {
    background: #ffffff;
    border: 1px solid #e2e8f0;
    border-radius: 12px;
    padding: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 15px;
    box-shadow: 0 3px 10px rgba(15, 23, 42, 0.04);
    transition: 0.2s ease;
}

.notification-card:hover {
    transform: translateY(-2px);
    box-shadow: 0 7px 18px rgba(15, 23, 42, 0.08);
}

.notification-content {
    display: flex;
    align-items: center;
    gap: 15px;
    min-width: 0;
}

.notification-icon {
    width: 42px;
    height: 42px;
    min-width: 42px;
    border-radius: 50%;
    background: #eff6ff;
    color: #2563eb;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 19px;
}

.message {
    color: #334155;
    font-size: 14px;
    line-height: 1.6;
    overflow-wrap: anywhere;
}

.time {
    color: #94a3b8;
    font-size: 12px;
    margin-top: 5px;
}

/* Delete Link */
.delete-btn {
    background: #fff1f2;
    color: #dc2626;
    border: 1px solid #fecaca;
    padding: 8px 15px;
    border-radius: 7px;
    text-decoration: none;
    font-size: 12px;
    font-weight: 600;
    white-space: nowrap;
    transition: 0.2s;
}

.delete-btn:hover {
    background: #dc2626;
    color: #ffffff;
}

/* Empty State */
.empty {
    background: #ffffff;
    border: 1px dashed #cbd5e1;
    border-radius: 12px;
    padding: 45px 20px;
    text-align: center;
    color: #64748b;
    font-size: 14px;
}

.empty-icon {
    font-size: 35px;
    margin-bottom: 12px;
}

/* Back Button */
.back-btn {
    display: inline-block;
    margin-top: 25px;
    padding: 11px 25px;
    background: #1e3a5f;
    color: #ffffff;
    text-decoration: none;
    border: 1px solid #1e3a5f;
    border-radius: 7px;
    font-size: 13px;
    font-weight: 600;
    transition: 0.2s;
}

.back-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

/* Footer */
.footer {
    text-align: center;
    padding: 20px;
    color: #94a3b8;
    font-size: 12px;
    margin-top: 45px;
    border-top: 1px solid #e2e8f0;
}

/* Responsive */
@media (max-width: 600px) {
    .navbar {
        padding: 16px 5%;
    }

    .main-container {
        margin: 30px auto;
        padding: 0 15px;
    }

    .heading h1 {
        font-size: 24px;
    }

    .notification-card {
        align-items: flex-start;
        padding: 15px;
    }

    .notification-content {
        gap: 10px;
    }

    .delete-btn {
        padding: 7px 10px;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <a href="/user/back" class="logo">CareerConnect</a>
    <a href="/user/back" class="nav-link">Dashboard</a>
</nav>

<!-- Main Content -->
<div class="main-container">

    <div class="heading">
        <h1>Notifications</h1>
        <p>Stay updated with your latest application activities.</p>
    </div>

    <div class="notification-list">

        <c:choose>

            <c:when test="${not empty notifications}">

                <c:forEach var="notification" items="${notifications}">

                    <div class="notification-card">

                        <div class="notification-content">

                            <div class="notification-icon">&#128276;</div>

                            <div>
                                <div class="message">
                                    ${notification.message}
                                </div>

                                <div class="time">
                                    ${notification.time}
                                </div>
                            </div>

                        </div>

                        <a href="/user/delete-notification/${notification.id}"
                           class="delete-btn">
                            Delete
                        </a>

                    </div>

                </c:forEach>

            </c:when>

            <c:otherwise>

                <div class="empty">
                    <div class="empty-icon">&#128276;</div>
                    <h3>No Notifications Yet</h3>
                    <p>You are all caught up! New updates will appear here.</p>
                </div>

            </c:otherwise>

        </c:choose>

    </div>

    <a href="/user/back" class="back-btn">
        &#8592; Back to Dashboard
    </a>

</div>

<!-- Footer -->
<footer class="footer">
    &copy; 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```