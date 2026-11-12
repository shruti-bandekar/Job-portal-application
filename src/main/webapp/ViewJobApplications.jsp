```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Applications Dashboard | CareerConnect</title>

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
    max-width: 1250px;
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

/* Table Container */
.container {
    max-width: 1250px;
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
    min-width: 1050px;
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

/* Status Badges */
.badge {
    display: inline-block;
    padding: 6px 11px;
    border-radius: 20px;
    font-size: 11px;
    font-weight: 700;
    text-transform: uppercase;
    white-space: nowrap;
}

.applied {
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

/* Action Buttons */
.btn {
    display: inline-block;
    padding: 8px 12px;
    border: 1px solid transparent;
    border-radius: 6px;
    font-size: 12px;
    font-weight: 600;
    text-decoration: none;
    cursor: pointer;
    transition: 0.2s;
    white-space: nowrap;
    margin: 2px;
}

.download {
    background: #eef2ff;
    color: #4338ca;
    border-color: #c7d2fe;
}

.download:hover {
    background: #4338ca;
    color: #ffffff;
}

.schedule {
    background: #dbeafe;
    color: #1d4ed8;
    border-color: #bfdbfe;
}

.schedule:hover {
    background: #1d4ed8;
    color: #ffffff;
}

.accept {
    background: #dcfce7;
    color: #15803d;
    border-color: #bbf7d0;
}

.accept:hover {
    background: #15803d;
    color: #ffffff;
}

.reject {
    background: #fee2e2;
    color: #b91c1c;
    border-color: #fecaca;
}

.reject:hover {
    background: #b91c1c;
    color: #ffffff;
}

.na {
    color: #94a3b8;
    font-size: 12px;
    font-style: italic;
}

/* Empty State */
.empty-message {
    text-align: center;
    padding: 30px;
    color: #64748b;
    font-size: 14px;
}

/* Back Button */
.back-section {
    max-width: 1250px;
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
    <a href="/recruiter/back" class="nav-link">Recruiter Dashboard</a>
</nav>

<!-- Main Content -->
<main class="main-content">

    <div class="page-heading">
        <h1>Applications Dashboard</h1>
        <p>Review applicants, download resumes and manage interview decisions.</p>
    </div>

    <div class="container">

        <table>
            <thead>
                <tr>
                    <th>Applicant</th>
                    <th>Mobile</th>
                    <th>Role</th>
                    <th>Resume</th>
                    <th>Applied</th>
                    <th>Interview</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>

                <c:forEach var="application" items="${applications}">
                    <tr>

                        <td><strong>${application.user.name}</strong></td>

                        <td>${application.user.mobile}</td>

                        <td>${application.job.title}</td>

                        <td>
                            <a class="btn download"
                               href="/recruiter/resume/${application.user.id}">
                                Download
                            </a>
                        </td>

                        <td>${application.appliedDate}</td>

                        <td>
                            <c:choose>
                                <c:when test="${application.interviewDate == null}">
                                    <span class="na">Not Scheduled</span>
                                </c:when>

                                <c:otherwise>
                                    ${application.interviewDate}
                                </c:otherwise>
                            </c:choose>
                        </td>

                        <td>
                            <c:choose>
                                <c:when test="${application.jobStatus.name() == 'APPLIED'}">
                                    <span class="badge applied">Applied</span>
                                </c:when>

                                <c:when test="${application.jobStatus.name() == 'SCHEDULED'}">
                                    <span class="badge scheduled">Scheduled</span>
                                </c:when>

                                <c:when test="${application.jobStatus.name() == 'SELECTED'}">
                                    <span class="badge selected">Selected</span>
                                </c:when>

                                <c:otherwise>
                                    <span class="badge rejected">Rejected</span>
                                </c:otherwise>
                            </c:choose>
                        </td>

                        <td>
                            <c:choose>

                                <c:when test="${application.jobStatus.name() == 'APPLIED'}">
                                    <a class="btn schedule"
                                       href="/recruiter/schedule/${application.id}">
                                        Schedule
                                    </a>
                                </c:when>

                                <c:when test="${application.jobStatus.name() == 'SCHEDULED'}">
                                    <a class="btn accept"
                                       href="/recruiter/accept/${application.id}">
                                        Accept
                                    </a>

                                    <a class="btn reject"
                                       href="/recruiter/reject/${application.id}">
                                        Reject
                                    </a>
                                </c:when>

                                <c:otherwise>
                                    <span class="na">Completed</span>
                                </c:otherwise>

                            </c:choose>
                        </td>

                    </tr>
                </c:forEach>

                <c:if test="${empty applications}">
                    <tr>
                        <td colspan="8" class="empty-message">
                            No applications have been received yet.
                        </td>
                    </tr>
                </c:if>

            </tbody>
        </table>

    </div>

    <div class="back-section">
        <a href="/recruiter/back" class="back-btn">
            Back to Dashboard
        </a>
    </div>

</main>

<!-- Footer -->
<footer>
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```