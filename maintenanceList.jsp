<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Maintenance List</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body { background-color: #0f172a; color: white; }
        .main { padding: 40px; }
        .welcome h1 { font-size: 2.5rem; margin-bottom: 5px; color: #ffffff; }
        .welcome p { color: #94a3b8; margin-bottom: 30px; }
        
        .content-container {
            background-color: #1e293b; 
            border-radius: 15px;
            padding: 30px;
            max-width: 1100px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }
        .section-title { color: #ffffff; font-size: 1.3rem; font-weight: 600; margin: 0; }
        
        /* Search/Filter Bar */
        .search-box {
            padding: 10px 15px;
            background-color: #0f172a;
            border: 1px solid #334155;
            border-radius: 8px;
            color: white;
            font-size: 0.9rem;
            width: 250px;
        }
        .search-box:focus { outline: 2px solid #3b82f6; }

        .data-table { width: 100%; border-collapse: collapse; text-align: left; }
        .data-table th {
            background-color: #0f172a;
            color: #94a3b8;
            padding: 14px 16px;
            font-size: 0.9rem;
            text-transform: uppercase;
            font-weight: 600;
        }
        .data-table td { padding: 16px; border-bottom: 1px solid #334155; color: #f8fafc; font-size: 0.95rem; }
        .data-table tr:last-child td { border-bottom: none; }
        
        .badge { display: inline-block; padding: 5px 12px; border-radius: 20px; font-size: 0.8rem; font-weight: 600; }
        .badge.progress { background-color: rgba(245, 158, 11, 0.15); color: #f59e0b; }
        .badge.scheduled { background-color: rgba(59, 130, 246, 0.15); color: #3b82f6; }
        .badge.urgent { background-color: rgba(239, 68, 68, 0.15); color: #ef4444; }

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
        .btn-action:hover { background-color: #2563eb; }
    </style>
</head>
<body>

<div class="sidebar">
    <div class="sidebar-items">
        <div>
            <div class="logo"><a href="employeeDashboard.jsp">Equipment Rental System</a></div>
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
            <h1>Maintenance Tasks</h1>
            <p>Manage pending assignments and update active hardware logs.</p>
        </div>

        <div class="content-container">
            <div class="section-header">
                <h3 class="section-title">Active Job Queue</h3>
                <input type="text" class="search-box" placeholder="Search by Equipment name...">
            </div>
            
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Task ID</th>
                        <th>Equipment</th>
                        <th>Issue Reported</th>
                        <th>Priority</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#MNT-041</td>
                        <td>Apple MacBook Pro 14"</td>
                        <td>Battery Replacement</td>
                        <td><span style="color: #f59e0b;">Medium</span></td>
                        <td><span class="badge progress">In Progress</span></td>
                        <td><a href="updateMaintenance.jsp" class="btn-action">Update</a></td>
                    </tr>
                    <tr>
                        <td>#MNT-042</td>
                        <td>Dell UltraSharp 27" Monitor</td>
                        <td>Screen flickering issue</td>
                        <td><span style="color: #ef4444; font-weight: 600;">High</span></td>
                        <td><span class="badge progress">In Progress</span></td>
                        <td><a href="updateMaintenance.jsp" class="btn-action">Update</a></td>
                    </tr>
                    <tr>
                        <td>#MNT-043</td>
                        <td>Logitech MX Master 3S Mouse</td>
                        <td>Scroll wheel calibration</td>
                        <td><span style="color: #94a3b8;">Low</span></td>
                        <td><span class="badge scheduled">Scheduled</span></td>
                        <td><a href="updateMaintenance.jsp" class="btn-action">Start Job</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>