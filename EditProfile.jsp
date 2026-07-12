<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-color: #0f172a; 
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
        .profile-container {
            background-color: #1e293b; 
            border-radius: 15px;
            padding: 40px;
            max-width: 900px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }
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
        .btn-container {
            display: flex;
            gap: 15px;
            margin-top: 10px;
        }
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
        }
        .btn-update:hover {
            background-color: #2563eb;
        }
        .btn-cancel {
            background-color: #475569;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            text-decoration: none;
            text-align: center;
            cursor: pointer;
            transition: background 0.3s;
        }
        .btn-cancel:hover {
            background-color: #334155;
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
            <h1>Edit Account Details</h1>
            <p>Modify your personal details and updates your password below</p>
        </div>

        <div class="profile-container">
            <form action="UpdateProfileServlet" method="POST">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="fullName" value="Admin User">
                </div>
                
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" value="admin@rental.com">
                </div>

                <div class="form-group">
                    <label>Role</label>
                    <input type="text" value="Equipment Manager" disabled style="background-color: #cbd5e1; cursor: not-allowed; color: #64748b;">
                </div>

                <div class="form-group">
                    <label>New Password</label>
                    <input type="password" name="password" placeholder="Leave blank to keep unchanged">
                </div>

                <div class="btn-container">
                    <button type="submit" class="btn-update">Save Changes</button>
                    <a href="Profile.jsp" class="btn-cancel">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>