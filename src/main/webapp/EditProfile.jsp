```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Edit Profile | CareerConnect</title>

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

.nav-label {
    background: #eaf1fc;
    color: #1e3a5f;
    padding: 8px 16px;
    border-radius: 20px;
    font-size: 13px;
    font-weight: 600;
}

/* Main Container */
.main-container {
    max-width: 850px;
    margin: 45px auto;
    padding: 0 20px;
}

.profile-card {
    background: #ffffff;
    padding: 38px 42px;
    border-radius: 16px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 30px rgba(15, 23, 42, 0.06);
}

/* Heading */
.heading {
    display: flex;
    align-items: center;
    gap: 17px;
    padding-bottom: 24px;
    margin-bottom: 27px;
    border-bottom: 1px solid #e2e8f0;
}

.profile-icon {
    min-width: 58px;
    height: 58px;
    border-radius: 14px;
    background: #eaf1fc;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 27px;
}

.heading h1 {
    font-size: 26px;
    color: #172554;
    margin-bottom: 6px;
}

.heading p {
    font-size: 14px;
    color: #64748b;
    line-height: 1.5;
}

/* Messages */
.message {
    text-align: center;
    color: #dc2626;
    font-size: 14px;
    font-weight: 500;
    margin-bottom: 18px;
}

/* Form */
.form-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 21px 24px;
}

.form-group {
    display: flex;
    flex-direction: column;
}

.full-width {
    grid-column: 1 / -1;
}

label {
    font-size: 14px;
    font-weight: 600;
    color: #334155;
    margin-bottom: 9px;
}

input, select {
    width: 100%;
    height: 46px;
    padding: 0 13px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    outline: none;
    background: #ffffff;
    color: #1e293b;
    font-size: 14px;
    transition: 0.25s;
}

input:focus, select:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
}

input[type="file"] {
    padding: 10px;
    height: auto;
    background: #f8fafc;
    cursor: pointer;
}

/* Upload Section */
.upload-box {
    background: #f8fafc;
    border: 1px dashed #94a3b8;
    border-radius: 10px;
    padding: 18px;
}

.upload-box label {
    margin-bottom: 12px;
}

/* Buttons */
.button-group {
    display: flex;
    gap: 14px;
    margin-top: 30px;
}

.btn {
    padding: 13px 25px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    text-decoration: none;
    text-align: center;
    cursor: pointer;
    transition: 0.25s;
}

.update-btn {
    background: #1e3a5f;
    color: #ffffff;
    border: 1px solid #1e3a5f;
}

.update-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.back-btn {
    background: #ffffff;
    color: #475569;
    border: 1px solid #cbd5e1;
}

.back-btn:hover {
    background: #f1f5f9;
}

/* Footer */
.footer {
    text-align: center;
    padding: 22px;
    color: #94a3b8;
    font-size: 13px;
}

/* Responsive */
@media (max-width: 600px) {
    .navbar {
        padding: 0 5%;
    }

    .main-container {
        margin: 25px auto;
        padding: 0 15px;
    }

    .profile-card {
        padding: 27px 20px;
    }

    .form-grid {
        grid-template-columns: 1fr;
    }

    .full-width {
        grid-column: auto;
    }

    .heading h1 {
        font-size: 23px;
    }

    .button-group {
        flex-direction: column;
    }

    .btn {
        width: 100%;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="logo">Career<span>Connect</span></div>
    <div class="nav-label">JOB SEEKER</div>
</nav>

<!-- Main Profile Form -->
<div class="main-container">

    <div class="profile-card">

        <!-- Heading -->
        <div class="heading">
            <div class="profile-icon">👤</div>

            <div>
                <h1>Edit Your Profile</h1>
                <p>Update your personal and educational details.</p>
            </div>
        </div>

        <!-- Messages -->
        <div class="message">
            ${pass} ${fail}
        </div>

        <form action="/user/profile" method="post"
            enctype="multipart/form-data">

            <div class="form-grid">

                <!-- Name -->
                <div class="form-group full-width">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name"
                        value="${user.name}"
                        placeholder="Enter your full name" required>
                </div>

                <!-- DOB -->
                <div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <input type="date" id="dob" name="dob"
                        value="${user.dob}" required>
                </div>

                <!-- Gender -->
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <select id="gender" name="gender">
                        <option value="male"
                            ${user.gender=='male'?'selected':''}>Male</option>

                        <option value="female"
                            ${user.gender=='female'?'selected':''}>Female</option>
                    </select>
                </div>

                <!-- 10th Percentage -->
                <div class="form-group">
                    <label for="tenth">10th Percentage (%)</label>
                    <input type="number" id="tenth"
                        step="0.01" min="0" max="100"
                        name="tenthPercentage"
                        value="${user.tenthPercentage}"
                        placeholder="Enter percentage">
                </div>

                <!-- 12th Percentage -->
                <div class="form-group">
                    <label for="twelth">12th Percentage (%)</label>
                    <input type="number" id="twelth"
                        step="0.01" min="0" max="100"
                        name="twelthPercentage"
                        value="${user.twelthPercentage}"
                        placeholder="Enter percentage">
                </div>

                <!-- Degree Percentage -->
                <div class="form-group full-width">
                    <label for="degree">Degree Percentage (%)</label>
                    <input type="number" id="degree"
                        step="0.01" min="0" max="100"
                        name="degreePercenatge"
                        value="${user.degreePercenatge}"
                        placeholder="Enter degree percentage">
                </div>

                <!-- Resume Upload -->
                <div class="form-group full-width">
                    <div class="upload-box">
                        <label for="resume">Upload Your Resume</label>
                        <input type="file" id="resume"
                            name="res" required>
                    </div>
                </div>

            </div>

            <!-- Buttons -->
            <div class="button-group">

                <button type="submit" class="btn update-btn">
                    Update Profile
                </button>

                <a href="/user/back" class="btn back-btn">
                    Back to Dashboard
                </a>

            </div>

        </form>

    </div>

</div>

<!-- Footer -->
<footer class="footer">
    © 2026 CareerConnect. All Rights Reserved.
</footer>

</body>
</html>
```