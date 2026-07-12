<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Settings</title>
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
        .avatar-section {
            text-align: center;
            margin-bottom: 30px;
            border-bottom: 1px solid #334155;
            padding-bottom: 20px;
        }
        .big-avatar {
            width: 100px;
            height: 100px;
            background: linear-gradient(135deg, #10b981, #047857);
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
        .info-group {
            margin-bottom: 25px;
            border-bottom: 1px solid #1e293b;
            padding-bottom: 10px;
        }
        .info-group label {
            display: block;
            color: #94a3b8;
            font-size: 0.9rem;
            margin-bottom: 5px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .info-value {
            font-size: 1.1rem;
            color: #f8fafc;
            font-weight: 500;
        }
        .btn-edit {
            display: inline-block;
            background-color: #3b82f6;
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
            margin-top: 10px;
        }
        .btn-edit:hover {
            background-color: #2563eb;
        }

        /* --- MODAL POPUP STYLES --- */
        .modal-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(5px);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }
        
        .modal-content {
            background-color: #1e293b;
            border-radius: 15px;
            padding: 40px;
            width: 90%;
            max-width: 600px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.5);
            animation: fadeIn 0.3s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
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
            box-sizing: border-box;
        }
        .form-group input:focus {
            outline: 3px solid #3b82f6;
        }
        .btn-container {
            display: flex;
            gap: 15px;
            margin-top: 25px;
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
                <a href="employeeDashboard.jsp">Equipment Rental System</a>
            </div>
            <!-- Fixed Sidebar Menu to match the Employee Maintenance Layout -->
            <div class="menu">
                <a href="employeeDashboard.jsp">Dashboard</a>
                <a href="maintenanceList.jsp">Maintenance List</a>
                <a href="updateMaintenance.jsp">Update Maintenance</a>
                <a href="maintenanceHistory.jsp">Maintenance History</a>
                <a href="Profile.jsp">Profile</a>
                <br><br><br><br>
                <a href="Login.jsp">Logout</a>
            </div>
        </div>
        <div class="profile">
            <div class="avatar" style="background: linear-gradient(135deg, #10b981, #047857);">E</div>
            <div>
                <h3>Employee User</h3>
                <p style="color:#999;">Staff Member</p>
            </div>
        </div>
    </div>

    <div class="main">
        <div class="welcome">
            <h1>Account Settings</h1>
            <p>View your personal details and credentials</p>
        </div>

        <div class="profile-container">
            <div class="avatar-section">
                <div class="big-avatar">E</div>
                <div class="username-display">Employee User</div>
            </div>

            <h3 class="section-title">Profile Information</h3>

            <div class="info-group">
                <label>Full Name</label>
                <div class="info-value">Employee User</div>
            </div>
            
            <div class="info-group">
                <label>Email Address</label>
                <div class="info-value">employee@rental.com</div>
            </div>

            <div class="info-group">
                <label>Role</label>
                <div class="info-value">Maintenance Staff</div>
            </div>

            <div class="info-group">
                <label>Password</label>
                <div class="info-value">••••••••</div>
            </div>

            <button type="button" class="btn-edit" onclick="openModal()">Edit Profile</button>
        </div>
    </div>
</div>

<!-- --- POPUP MODAL --- -->
<div id="editProfileModal" class="modal-overlay" onclick="closeModalOnOutsideClick(event)">
    <div class="modal-content">
        <div class="welcome" style="margin-top: 0;">
            <h1 style="font-size: 2rem;">Edit Account Details</h1>
            <p>Modify your personal details and update your password below</p>
        </div>
        
        <form action="UpdateProfileServlet" method="POST">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="fullName" value="Employee User" required>
            </div>
            
            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" value="employee@rental.com" required>
            </div>

            <div class="form-group">
                <label>Role</label>
                <input type="text" value="Maintenance Staff" disabled style="background-color: #334155; cursor: not-allowed; color: #94a3b8;">
            </div>

            <div class="form-group">
                <label>New Password</label>
                <input type="password" name="password" placeholder="Leave blank to keep unchanged">
            </div>

            <div class="btn-container">
                <button type="submit" class="btn-update">Save Changes</button>
                <button type="button" class="btn-cancel" onclick="closeModal()">Cancel</button>
            </div>
        </form>
    </div>
</div>

<script>
    const modal = document.getElementById('editProfileModal');

    function openModal() {
        modal.style.display = 'flex';
    }

    function closeModal() {
        modal.style.display = 'none';
    }

    function closeModalOnOutsideClick(event) {
        if (event.target === modal) {
            closeModal();
        }
    }
</script>

</body>
</html>