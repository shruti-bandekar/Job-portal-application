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

<title>All Job Details | CareerConnect</title>

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
    background: #ffffff;
    padding: 17px 7%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 10px rgba(0,0,0,0.06);
}

.logo {
    color: #1e3a5f;
    font-size: 25px;
    font-weight: 700;
    text-decoration: none;
}

.nav-link {
    color: #1e3a5f;
    font-size: 14px;
    font-weight: 600;
    text-decoration: none;
}

.nav-link:hover {
    color: #2563eb;
}

/* Main */
.main-content {
    flex: 1;
    padding: 35px 5%;
}

.page-heading {
    max-width: 1200px;
    margin: 0 auto 25px;
}

.page-heading h1 {
    color: #1e3a5f;
    font-size: 28px;
    margin-bottom: 7px;
}

.page-heading p {
    color: #64748b;
    font-size: 14px;
}

/* Table container */
.container {
    max-width: 1200px;
    margin: auto;
    background: #ffffff;
    padding: 22px;
    border-radius: 12px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.06);
    overflow-x: auto;
}

table {
    width: 100%;
    min-width: 950px;
    border-collapse: collapse;
}

th {
    background: #1e3a5f;
    color: #ffffff;
    padding: 15px 13px;
    text-align: left;
    font-size: 13px;
    font-weight: 600;
    white-space: nowrap;
}

td {
    padding: 15px 13px;
    border-bottom: 1px solid #e2e8f0;
    color: #475569;
    font-size: 13px;
    line-height: 1.6;
    vertical-align: middle;
}

tbody tr:nth-child(even) {
    background: #f8fafc;
}

tbody tr:hover {
    background: #eff6ff;
}

/* Job description */
.description {
    min-width: 180px;
    max-width: 280px;
    overflow-wrap: anywhere;
}

/* Status buttons */
.status-btn {
    padding: 8px 13px;
    border: none;
    border-radius: 6px;
    font-size: 12px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.2s;
    white-space: nowrap;
}

.approve {
    background: #dcfce7;
    color: #15803d;
}

.approve:hover {
    background: #15803d;
    color: #ffffff;
}

.disapprove {
    background: #fee2e2;
    color: #b91c1c;
}

.disapprove:hover {
    background: #b91c1c;
    color: #ffffff;
}

.status-link {
    text-decoration: none;
}

/* Empty state */
.empty-message {
    text-align: center;
    padding: 30px;
    color: #64748b;
    font-size: 14px;
}

/* Back button */
.back-section {
    max-width: 1200px;
    margin: 25px auto 0;
    text-align: center;
}

.back-btn {
    display: inline-block;
    padding: 11px 28px;
    background: #1e3a5f;
    color: #ffffff;
    text-decoration: none;
    border: 1px solid #1e3a5f;
    border-radius: 7px;
    font-size: 14px;
    font-weight: 600;
    transition: 0.25s;
}

.back-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

/* Footer */
footer {
    background: #ffffff;
    text-align: center;
    padding: 17px;
    color: #64748b;
    font-size: 13px;
    border-top: 1px solid #e2e8f0;
}

@media (max-width: 768px) {
    .main-content {
        padding: 25px 15px;
    }

    .page-heading h1 {
        font-size: 23px;
    }

    .container {
        padding: 12px;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <a href="/" class="logo">CareerConnect</a>
    <a href="/admin/back" class="nav-link">Admin Dashboard</a>
</nav>

<!-- Main Content -->
<main class="main-content">

    <div class="page-heading">
        <h1>All Job Details</h1>
        <p>Review job postings and manage their approval status.</p>
    </div>

    <div class="container">

        <table>
            <thead>
                <tr>
                    <th>Role</th>
                    <th>Description</th>
                    <th>Package</th>
                    <th>Experience</th>
                    <th>Location</th>
                    <th>Posted</th>
                    <th>Status</th>
                </tr>
            </thead>

            <tbody>

                <c:forEach var="job" items="${jobs}">
                    <tr>

                        <td><strong>${job.title}</strong></td>

                        <td class="description">${job.description}</td>

                        <td>${job.ctc} LPA</td>

                        <td>${job.experience} yrs</td>

                        <td>${job.location}</td>

                        <td>
                            <c:set var="duration"
                                value="${Duration.between(job.postedTime, LocalDateTime.now())}" />

                            <c:choose>
                                <c:when test="${duration.toDays()==0}">
                                    <c:choose>
                                        <c:when test="${duration.toHours()==0}">
                                            <c:choose>
                                                <c:when test="${duration.toMinutes()==0}">
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
                        </td>

                        <td>
                            <a class="status-link"
                               href="/admin/change-status/${job.id}">

                                <c:choose>
                                    <c:when test="${job.approved}">
                                        <button type="button"
                                                class="status-btn disapprove">
                                            Disapprove
                                        </button>
                                    </c:when>

                                    <c:otherwise>
                                        <button type="button"
                                                class="status-btn approve">
                                            Approve
                                        </button>
                                    </c:otherwise>
                                </c:choose>

                            </a>
                        </td>

                    </tr>
                </c:forEach>

                <c:if test="${empty jobs}">
                    <tr>
                        <td colspan="7" class="empty-message">
                            No job listings are available currently.
                        </td>
                    </tr>
                </c:if>

            </tbody>
        </table>

    </div>

    <div class="back-section">
        <a href="/admin/back" class="back-btn">Back to Dashboard</a>
    </div>

</main>

<!-- Footer -->
<footer>
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```