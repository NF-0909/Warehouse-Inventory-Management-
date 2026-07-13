<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Maintenance Dashboard</title>
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
        
        /* --- DASHBOARD CARDS --- */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            margin-bottom: 40px;
            max-width: 1100px;
        }
        .stat-card {
            background-color: #1e293b;
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            border-left: 4px solid #3b82f6;
        }
        .stat-card.warning {
            border-left-color: #f59e0b;
        }
        .stat-card.success {
            border-left-color: #10b981;
        }
        .stat-label {
            color: #94a3b8;
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 10px;
        }
        .stat-value {
            font-size: 2rem;
            font-weight: 700;
            color: #f8fafc;
        }

        /* --- TABLE SECTION --- */
        .content-container {
            background-color: #1e293b; 
            border-radius: 15px;
            padding: 30px;
            max-width: 1100px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }
        .section-title {
            color: #ffffff;
            font-size: 1.3rem;
            margin-bottom: 20px;
            font-weight: 600;
        }
        .data-table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
        }
        .data-table th {
            background-color: #0f172a;
            color: #94a3b8;
            padding: 14px 16px;
            font-size: 0.9rem;
            text-transform: uppercase;
            font-weight: 600;
        }
        .data-table td {
            padding: 16px;
            border-bottom: 1px solid #334155;
            color: #f8fafc;
            font-size: 0.95rem;
        }
        .data-table tr:last-child td {
            border-bottom: none;
        }
        
        /* --- STATUS BADGES --- */
        .badge {
            display: inline-block;
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
        }
        .badge.active {
            background-color: rgba(245, 158, 11, 0.15);
            color: #f59e0b;
        }
        .badge.pending {
            background-color: rgba(59, 130, 246, 0.15);
            color: #3b82f6;
        }
        .badge.returned {
            background-color: rgba(16, 185, 129, 0.15);
            color: #10b981;
        }

        /* --- QUICK ACTION BUTTON --- */
        .btn-action {
            display: inline-block;
            background-color: #3b82f6;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 6px;
            font-size: 0.85rem;
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
            transition: background 0.3s;
        }
        .btn-action:hover {
            background-color: #2563eb;
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
            <h1>Maintenance Overview</h1>
            <p>Track ongoing repairs, scheduled updates, and equipment service logs.</p>
        </div>

        <div class="stats-grid">
            <div class="stat-card warning">
                <div class="stat-label">Under Maintenance</div>
                <div class="stat-value">3</div>
            </div>
            <div class="stat-card" style="border-left-color: #3b82f6;">
                <div class="stat-label">Scheduled Tasks</div>
                <div class="stat-value">2</div>
            </div>
            <div class="stat-card success">
                <div class="stat-label">Completed (This Month)</div>
                <div class="stat-value">18</div>
            </div>
        </div>

        <div class="content-container">
            <h3 class="section-title">Active Maintenance Tasks</h3>
            
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Task ID</th>
                        <th>Equipment Name</th>
                        <th>Issue Reported</th>
                        <th>Date Assigned</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#MNT-041</td>
                        <td>Apple MacBook Pro 14"</td>
                        <td>Battery Replacement</td>
                        <td>01 Jul 2026</td>
                        <td><span class="badge active">In Progress</span></td>
                        <td><a href="updateMaintenance.jsp" class="btn-action">Update</a></td>
                    </tr>
                    <tr>
                        <td>#MNT-042</td>
                        <td>Dell UltraSharp 27" Monitor</td>
                        <td>Screen flickering issue</td>
                        <td>02 Jul 2026</td>
                        <td><span class="badge active">In Progress</span></td>
                        <td><a href="updateMaintenance.jsp" class="btn-action">Update</a></td>
                    </tr>
                    <tr>
                        <td>#MNT-043</td>