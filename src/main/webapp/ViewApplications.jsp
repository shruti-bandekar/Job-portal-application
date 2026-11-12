```jsp
<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Applications | CareerConnect</title>

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

/* Main Content */
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

/* Table */
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

/* Status badges */
.badge {
    display: inline-block;
    padding: 6px 11px;
    border-radius: 20px;
    font-size: 11px;
    font-weight: 700;
    text-transform: uppercase;
    white-space: nowrap;
}

.pending {
    background: #fef3c7;
    color: #92400e;
}

.scheduled {
    background: #dbeafe;
    color: #1d4ed8;
}

.selected {
    background: #dcfce7;
    color: #15803d;
}

.rejected {
    background: #fee2e2;
    color: #b91c1c;
}

.not-scheduled {
    color: #94a3b8;
    font-size: 12px;
}

/* Empty message */
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

/* Responsive */
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
    <a href="/user/back" class="nav-link">User Dashboard</a>
</nav>

<!-- Main Content -->
<main class="main-content">

    <div class="page-heading">
        <h1>My Applications</h1>
        <p>Track your job applications, interview schedules and application status.</p>
    </div>

    <div class="container">

        <table>
            <thead>
                <tr>
                    <th>Company</th>
                    <th>Role</th>
                    <th>Package</th>
                    <th>Location</th>
                    <th>Applied Date</th>
                    <th>Interview</th>
                    <th>Status</th>
                </tr>
            </thead>

            <tbody>

                <c:forEach var="application" items="${applications}">
                    <tr>

                        <td><strong>${application.job.recruiter.companyname}</strong></td>

                        <td>${application.job.title}</td>

                        <td>₹${application.job.ctc} LPA</td>

                        <td>${application.job.location}</td>

                        <td>
                            <c:set var="format"
                                value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}" />
                            ${application.appliedDate.format(format)}
                        </td>

                        <td>
                            <c:choose>
                                <c:when test="${application.interviewDate == null}">
                                    <span class="not-scheduled">Not Scheduled</span>
                                </c:when>

                                <c:otherwise>
                                    <c:set var="format"
                                        value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}" />
                                    ${application.interviewDate.format(format)}
                                </c:otherwise>
                            </c:choose>
                        </td>

                        <td>
                            <span class="badge ${
                                application.jobStatus.name() eq 'PENDING' ? 'pending' :
                                application.jobStatus.name() eq 'SCHEDULED' ? 'scheduled' :
                                application.jobStatus.name() eq 'SELECTED' ? 'selected' :
                                'rejected'
                            }">
                                ${application.jobStatus}
                            </span>
                        </td>

                    </tr>
                </c:forEach>

                <c:if test="${empty applications}">
                    <tr>
                        <td colspan="7" class="empty-message">
                            You haven't applied for any jobs yet.
                        </td>
                    </tr>
                </c:if>

            </tbody>
        </table>

    </div>

    <div class="back-section">
        <a href="/user/back" class="back-btn">Back to Dashboard</a>
    </div>

</main>

<!-- Footer -->
<footer>
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```