```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Job | CareerConnect</title>

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
    height: 70px;
    background: #ffffff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 8%;
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

.nav-text {
    font-size: 14px;
    color: #64748b;
}

/* Main Container */
.main-container {
    max-width: 850px;
    margin: 45px auto;
    padding: 0 20px;
}

.form-card {
    background: #ffffff;
    border-radius: 16px;
    padding: 38px 45px;
    box-shadow: 0 8px 30px rgba(15, 23, 42, 0.07);
    border: 1px solid #e2e8f0;
}

/* Heading */
.heading {
    margin-bottom: 30px;
    padding-bottom: 22px;
    border-bottom: 1px solid #e2e8f0;
}

.heading h1 {
    color: #172554;
    font-size: 28px;
    margin-bottom: 8px;
}

.heading p {
    color: #64748b;
    font-size: 14px;
    line-height: 1.6;
}

/* Form Layout */
.form-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 22px;
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

input, textarea {
    width: 100%;
    padding: 13px 14px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    outline: none;
    font-size: 14px;
    color: #1e293b;
    background: #ffffff;
    transition: 0.25s;
}

input {
    height: 46px;
}

textarea {
    min-height: 115px;
    resize: vertical;
}

input:focus, textarea:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
}

input::placeholder, textarea::placeholder {
    color: #94a3b8;
}

/* Package Field */
.package-wrapper {
    display: flex;
    align-items: center;
    gap: 10px;
}

.package-wrapper input {
    flex: 1;
}

.package-wrapper span {
    font-size: 14px;
    font-weight: 600;
    color: #475569;
}

/* Buttons */
.button-group {
    display: flex;
    gap: 14px;
    margin-top: 30px;
}

.btn {
    padding: 13px 28px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.25s;
    text-decoration: none;
    text-align: center;
}

.add-btn {
    background: #1e3a5f;
    color: #ffffff;
    border: 1px solid #1e3a5f;
}

.add-btn:hover {
    background: #ffffff;
    color: #1e3a5f;
}

.cancel-btn {
    background: #ffffff;
    color: #475569;
    border: 1px solid #cbd5e1;
}

.cancel-btn:hover {
    background: #f1f5f9;
}

.back-link {
    display: inline-block;
    margin-top: 22px;
    color: #1e3a5f;
    font-size: 14px;
    font-weight: 600;
    text-decoration: none;
}

.back-link:hover {
    color: #2563eb;
}

/* Responsive */
@media (max-width: 600px) {
    .navbar {
        padding: 0 5%;
    }

    .form-card {
        padding: 25px 20px;
    }

    .form-grid {
        grid-template-columns: 1fr;
    }

    .full-width {
        grid-column: auto;
    }

    .heading h1 {
        font-size: 24px;
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
    <div class="nav-text">Recruiter Dashboard</div>
</nav>

<!-- Main Form -->
<div class="main-container">

    <div class="form-card">

        <div class="heading">
            <h1>Post a New Job</h1>
            <p>Provide the job details below to connect with the right candidates.</p>
        </div>

        <form action="/recruiter/add-job" method="post">

            <div class="form-grid">

                <div class="form-group full-width">
                    <label>Job Title</label>
                    <input type="text" name="title"
                        placeholder="e.g. Java Developer" required>
                </div>

                <div class="form-group full-width">
                    <label>Skills Required</label>
                    <input type="text" name="skills"
                        placeholder="e.g. Java, Spring Boot, MySQL" required>
                </div>

                <div class="form-group full-width">
                    <label>Job Description</label>
                    <textarea name="description"
                        placeholder="Describe the job responsibilities and requirements..."
                        required></textarea>
                </div>

                <div class="form-group">
                    <label>Experience Required (Years)</label>
                    <input type="number" name="experience"
                        placeholder="e.g. 2" min="0" required>
                </div>

                <div class="form-group">
                    <label>Annual Package</label>
                    <div class="package-wrapper">
                        <input type="text" name="ctc"
                            placeholder="e.g. 5.5" required>
                        <span>LPA</span>
                    </div>
                </div>

                <div class="form-group">
                    <label>Job Location</label>
                    <input type="text" name="location"
                        placeholder="e.g. Bengaluru" required>
                </div>

                <div class="form-group">
                    <label>Number of Positions</label>
                    <input type="number" name="numberOfPositions"
                        placeholder="e.g. 5" min="1" required>
                </div>

            </div>

            <div class="button-group">
                <button type="submit" class="btn add-btn">
                    Publish Job
                </button>

                <button type="reset" class="btn cancel-btn">
                    Clear Form
                </button>
            </div>

        </form>

        <a href="/recruiter/back" class="back-link">
            &#8592; Back to Dashboard
        </a>

    </div>
</div>

</body>
</html>
```