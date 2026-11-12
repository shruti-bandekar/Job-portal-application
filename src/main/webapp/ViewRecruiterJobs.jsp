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
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Job Listings | CareerConnect</title>

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

/* Main Container */
.main-container {
    max-width: 1200px;
    margin: 40px auto;
    padding: 0 25px;
}

.heading {
    margin-bottom: 28px;
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

/* Job Grid */
.job-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 22px;
}

.job-card {
    background: #ffffff;
    padding: 23px;
    border: 1px solid #e2e8f0;
    border-radius: 12px;
    display: flex;
    flex-direction: column;
    gap: 15px;
    box-shadow: 0 3px 10px rgba(15, 23, 42, 0.04);
    transition: 0.25s ease;
}

.job-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 9px 22px rgba(15, 23, 42, 0.09);
}

.job-title {
    font-size: 19px;
    font-weight: 700;
    color: #1e3a5f;
    line-height: 1.4;
}

.job-description {
    font-size: 14px;
    color: #64748b;
    line-height: 1.6;
    overflow-wrap: anywhere;
}

/* Job Information */
.job-details {
    display: flex;
    flex-direction: column;
    gap: 10px;
    padding-top: 5px;
}

.info {
    font-size: 13px;
    color: #475569;
    display: flex;
    align-items: flex-start;
    gap: 8px;
}

.info strong {
    color: #334155;
}

/* Approval Status */
.badge {
    display: inline-block;
    width: fit-content;
    padding: 6px 12px;
    border-radius: 20px;
    font-size: 12px;
    font-weight: 600;
}

.approved {
    background: #dcfce7;
    color: #15803d;
}

.pending {
    background: #fef3c7;
    color: #b45309;
}

/* Card Footer */
.card-footer {
    border-top: 1px solid #e2e8f0;
    padding-top: 14px;
    margin-top: auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.time {
    font-size: 12px;
    color: #94a3b8;
}

/* Empty State */
.empty {
    background: #ffffff;
    border: 1px dashed #cbd5e1;
    border-radius: 12px;
    padding: 45px 20px;
    text-align: center;
    color: #64748b;
    grid-column: 1 / -1;
}

.empty h3 {
    color: #1e3a5f;
    margin-bottom: 8px;
}

/* Back Button */
.back-btn {
    display: inline-block;
    margin-top: 30px;
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

    .job-container {
        grid-template-columns: 1fr;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <a href="/recruiter/back" class="logo">CareerConnect</a>
    <a href="/recruiter/back" class="nav-link">Dashboard</a>
</nav>

<!-- Main Content -->
<div class="main-container">

    <div class="heading">
        <h1>My Job Listings</h1>
        <p>Manage and track the job opportunities you have posted.</p>
    </div>

    <div class="job-container">

        <c:choose>

            <c:when test="${not empty jobs}">

                <c:forEach var="job" items="${jobs}">

                    <div class="job-card">

                        <div class="job-title">
                            ${job.title}
                        </div>

                        <div class="job-description">
                            ${job.description}
                        </div>

                        <div class="job-details">

                            <div class="info">
                                <strong>Salary:</strong> ${job.ctc} LPA
                            </div>

                            <div class="info">
                                <strong>Location:</strong> ${job.location}
                            </div>

                            <div class="info">
                                <strong>Experience:</strong> ${job.experience} years
                            </div>

                        </div>

                        <c:choose>
                            <c:when test="${job.approved}">
                                <span class="badge approved">
                                    Approved
                                </span>
                            </c:when>

                            <c:otherwise>
                                <span class="badge pending">
                                    Pending Approval
                                </span>
                            </c:otherwise>
                        </c:choose>

                        <div class="card-footer">

                            <div class="time">

                                <c:set var="duration"
                                    value="${Duration.between(job.postedTime, LocalDateTime.now())}" />

                                <c:choose>

                                    <c:when test="${duration.toDays() == 0}">

                                        <c:choose>

                                            <c:when test="${duration.toHours() == 0}">

                                                <c:choose>

                                                    <c:when test="${duration.toMinutes() == 0}">
                                                        ${duration.toSeconds()} sec ago
                                                    </c:when>

                                                    <c:otherwise>
                                                        ${duration.toMinutes()} min ago
                                                    </c:otherwise>

                                                </c:choose>

                                            </c:when>

                                            <c:otherwise>
                                                ${duration.toHours()} hrs ago
                                            </c:otherwise>

                                        </c:choose>

                                    </c:when>

                                    <c:otherwise>
                                        ${duration.toDays()} days ago
                                    </c:otherwise>

                                </c:choose>

                            </div>

                        </div>

                    </div>

                </c:forEach>

            </c:when>

            <c:otherwise>

                <div class="empty">
                    <h3>No Job Listings Yet</h3>
                    <p>You have not posted any jobs. Your job listings will appear here.</p>
                </div>

            </c:otherwise>

        </c:choose>

    </div>

    <a href="/recruiter/back" class="back-btn">
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