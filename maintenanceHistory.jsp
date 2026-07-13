<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Maintenance History</title>
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
        .section-title { color: #ffffff; font-size: 1.3rem; margin-bottom: 20px; font-weight: 600; }
        
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
        .badge.fixed { background-color: rgba(16, 185, 129, 0.15); color: #10b981; }
        .badge.decommissioned { background-color: rgba(148, 163, 184, 0.15); color: #94a3b8; }
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
            <h1>Historical Archive</h1>
            <p>Review comprehensive logs of resolved equipment tickets and service records.</p>
        </div>

        <div class="content-container">
            <h3 class="section-title">Completed Maintenance Archives</h3>
            
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Task ID</th>
                        <th>Equipment Item</th>
                        <th>Resolution Action</th>
                        <th>Date Completed</th>
                        <th>Serviced By</th>
                        <th>Result</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#MNT-039</td>
                        <td>ThinkPad Thunderbolt 4 Dock</td>
                        <td>Reflashed clean firmware package</td>
                        <td>28 Jun 2026</td>
                        <td>Employee User</td>
                        <td><span class="badge fixed">Fixed</span></td>
                    </tr>
                    <tr>
                        <td>#MNT-035</td>
                        <td>HyperX Alloy Mechanical Keyboard</td>
                        <td>Replaced faulty key switch pins</td>
                        <td>14 Jun 2026</td>
                        <td>Employee User</td>
                        <td><span class="badge fixed">Fixed</span></td>
                    </tr>
                    <tr>
                        <td>#MNT-022</td>
                        <td>Dell 24" Basic Monitor</td>
                        <td>Power board capacitor failure - Unrepairable</td>
                        <td>22 May 2026</td>
                        <td>Technical Lab B</td>
                        <td><span class="badge decommissioned">Scrapped</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>