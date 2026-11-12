```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment | CareerConnect</title>

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
}

/* Navbar */
.navbar {
    width: 100%;
    height: 70px;
    background: #ffffff;
    display: flex;
    align-items: center;
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

/* Main section */
.main {
    min-height: calc(100vh - 70px);
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 35px 20px;
}

.container {
    width: 100%;
    max-width: 430px;
    background: #ffffff;
    padding: 38px 32px;
    border-radius: 14px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.06);
    text-align: center;
}

/* Payment icon */
.icon {
    width: 68px;
    height: 68px;
    margin: 0 auto 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #eff6ff;
    border-radius: 50%;
    font-size: 32px;
}

/* Heading */
h1 {
    font-size: 23px;
    color: #1e3a5f;
    margin-bottom: 12px;
}

.amount {
    font-size: 34px;
    font-weight: 700;
    color: #1e3a5f;
    margin: 20px 0 8px;
}

.desc {
    font-size: 14px;
    color: #64748b;
    margin-bottom: 28px;
}

/* Membership details */
.membership {
    background: #f8fafc;
    border: 1px solid #e2e8f0;
    border-radius: 9px;
    padding: 15px;
    margin-bottom: 25px;
    text-align: left;
}

.membership-title {
    color: #1e3a5f;
    font-size: 14px;
    font-weight: 600;
    margin-bottom: 6px;
}

.membership p {
    font-size: 13px;
    color: #64748b;
    line-height: 1.6;
}

/* Payment button */
button {
    width: 100%;
    padding: 14px;
    border: 1px solid #1e3a5f;
    border-radius: 8px;
    background: #1e3a5f;
    color: #ffffff;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.2s;
}

button:hover {
    background: #ffffff;
    color: #1e3a5f;
}

/* Security note */
.secure {
    margin-top: 18px;
    font-size: 12px;
    color: #64748b;
}

@media (max-width: 480px) {
    .navbar {
        padding: 0 20px;
    }

    .container {
        padding: 30px 22px;
    }

    h1 {
        font-size: 21px;
    }
}
</style>
</head>

<body>

    <nav class="navbar">
        <div class="logo">Career<span>Connect</span></div>
    </nav>

    <main class="main">

        <div class="container">

            <div class="icon">💳</div>

            <h1>Proceed to Payment</h1>

            <div class="amount">₹199</div>

            <div class="desc">
                Prime Membership Access
            </div>

            <div class="membership">
                <div class="membership-title">Prime Membership</div>
                <p>
                    Unlock premium membership access and enjoy
                    additional benefits on CareerConnect.
                </p>
            </div>

            <button type="button" id="rzp-button1">
                Pay Securely
            </button>

            <div class="secure">
                🔒 Secure payment powered by Razorpay
            </div>

        </div>

    </main>

    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

    <script>

    var options = {
        "key": "${details.keyDetails}",
        "amount": "${details.amount}",
        "currency": "INR",
        "name": "CareerConnect",
        "description": "For Purchasing prime membership",
        "image": "https://externlabs.com/wp-content/uploads/2022/11/job-portal-app-development.jpg",
        "order_id": "${details.orderId}",

        "callback_url": "https://fictional-garbanzo-qjvjppwg9qqh95jp-8080.app.github.dev/user/payment/${details.id}",

        "prefill": {
            "name": "${user.name}",
            "email": "${user.email}",
            "contact": "+91${user.mobile}"
        },

        "notes": {
            "address": "Razorpay Corporate Office"
        },

        "theme": {
            "color": "#1e3a5f"
        }
    };

    var rzp1 = new Razorpay(options);

    document.getElementById('rzp-button1').onclick = function(e) {
        rzp1.open();
        e.preventDefault();
    };

    </script>

</body>
</html>
```