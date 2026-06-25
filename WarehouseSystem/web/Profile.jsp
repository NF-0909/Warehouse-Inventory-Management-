<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Settings</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Dark Theme overrides for the Profile Page */
        body {
            background-color: #0f172a; /* Deep dark background */
            color: white;
        }

        .main {
            padding: 40px;
        }

        .welcome h1 {
            font-size: 2.5rem;
            margin-bottom: 5px;
            color: #ffffff;
        }

        .welcome p {
            color: #94a3b8;
            margin-bottom: 30px;
        }

        /* Profile Card */
        .profile-container {
            background-color: #1e293b; /* Darker slate for the card */
            border-radius: 15px;
            padding: 40px;
            max-width: 900px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }

        /* Avatar Section */
        .avatar-section {
            text-align: center;
            margin-bottom: 30px;
            border-bottom: 1px solid #334155;
            padding-bottom: 20px;
        }

        .big-avatar {
            width: 100px;
            height: 100px;
            background: linear-gradient(135deg, #3b82f6, #1e3c72);
            border-radius: 50%;
            margin: 0 auto 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 40px;
            color: white;
            border: 4px solid #334155;
        }

        .username-display {
            font-size: 1.5rem;
            font-weight: 600;
            color: #f8fafc;
        }

        .section-title {
            color: #94a3b8;
            font-size: 1.2rem;
            margin-bottom: 25px;
            font-weight: 500;
        }

        /* Form Styling */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #94a3b8;
            font-size: 0.9rem;
        }

        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border-radius: 8px;
            border: none;
            background-color: #ffffff;
            color: #334155;
            font-size: 1rem;
        }

        .form-group input:focus {
            outline: 3px solid #3b82f6;
        }

        /* Button Styling */
        .btn-update {
            background-color: #3b82f6;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 10px;
        }

        .btn-update:hover {
            background-color: #2563eb;
        }
    </style>
</head>
<body>

<div class="sidebar">

    <div class="sidebar-items">
        <div>
            <div class="logo">
                <a href="Dashboard.jsp">Equipment Rental System</a>
            </div>

            <div class="menu">
                <a href="dashboard.jsp">Dashboard</a>
                <a href="EquipmentCatalog.jsp">Equipment Catalog</a>
                <a href="RentingStatus.jsp">Renting Status</a>
                <a href="Transaction.jsp">Transaction</a>
                <a href="Profile.jsp">Profile</a>
                <br><br><br><br>
                <a href="Login.jsp">Logout</a>
            </div>
        </div>

        <div class="profile">
            <div class="avatar">A</div>
            <div>
                <h3>Admin User</h3>
                <p style="color:#999;">Manager</p>
            </div>
        </div>
    </div>

    <div class="main">

        <div class="welcome">
            <h1>Account Settings</h1>
            <p>View and manage your personal details and credentials</p>
        </div>

        <div class="profile-container">
            
            <div class="avatar-section">
                <div class="big-avatar">A</div>
                <div class="username-display">Admin User</div>
            </div>

            <h3 class="section-title">Profile Information</h3>

            <form action="UpdateProfileServlet" method="POST">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="fullName" value="Admin">
                </div>
                
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" value="admin@rental.com">
                </div>

                <div class="form-group">
                    <label>Role</label>
                    <input type="text" value="Equipment Manager" disabled style="background-color: #e2e8f0; cursor: not-allowed;">
                </div>

                <div class="form-group">
                    <label>New Password</label>
                    <input type="password" name="password" placeholder="Leave blank to keep unchanged">
                </div>

                <button type="submit" class="btn-update">Update Profile</button>
            </form>

        </div>

    </div>

</div>

</body>
</html>