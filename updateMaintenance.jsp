<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Maintenance</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body { background-color: #0f172a; color: white; }
        .main { padding: 40px; }
        .welcome h1 { font-size: 2.5rem; margin-bottom: 5px; color: #ffffff; }
        .welcome p { color: #94a3b8; margin-bottom: 30px; }
        
        .form-container {
            background-color: #1e293b; 
            border-radius: 15px;
            padding: 40px;
            max-width: 700px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }
        .form-group { margin-bottom: 22px; }
        .form-group label { display: block; margin-bottom: 8px; color: #94a3b8; font-size: 0.9rem; }
        
        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 12px 15px;
            border-radius: 8px;
            border: 1px solid #334155;
            background-color: #ffffff;
            color: #334155;
            font-size: 1rem;
            box-sizing: border-box;
        }
        .form-group input:focus, .form-group select:focus, .form-group textarea:focus {
            outline: 3px solid #3b82f6;
        }
        
        /* Read-only styling override */
        .form-group input[readonly] {
            background-color: #334155;
            color: #94a3b8;
            cursor: not-allowed;
            border-color: transparent;
        }

        .btn-container { display: flex; gap: 15px; margin-top: 30px; }
        .btn-save {
            background-color: #3b82f6; color: white; padding: 12px 30px;
            border: none; border-radius: 8px; font-size: 1rem; font-weight: 600;
            cursor: pointer; transition: background 0.3s;
        }
        .btn-save:hover { background-color: #2563eb; }
        .btn-cancel {
            background-color: #475569; color: white; padding: 12px 30px;
            border: none; border-radius: 8px; font-size: 1rem; font-weight: 600;
            text-decoration: none; text-align: center; cursor: pointer; transition: background 0.3s;
        }
        .btn-cancel:hover { background-color: #334155; }
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
            <h1>Update Service Progress</h1>
            <p>Modify task resolution updates and technical completion updates.</p>
        </div>

        <div class="form-container">
            <form action="UpdateMaintenanceServlet" method="POST">
                <div class="form-group">
                    <label>Task Reference ID</label>
                    <input type="text" name="taskId" value="#MNT-041" readonly>
                </div>

                <div class="form-group">
                    <label>Select Target Task</label>
                    <select name="selectedTask">
                        <option value="MNT-041">Apple MacBook Pro 14" (Battery Replacement)</option>
                        <option value="MNT-042">Dell UltraSharp 27" Monitor (Screen Flickering)</option>
                        <option value="MNT-043">Logitech MX Master 3S Mouse (Calibration)</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Status Update</label>
                    <select name="status">
                        <option value="Scheduled">Scheduled</option>
                        <option value="In Progress" selected>In Progress</option>
                        <option value="Awaiting Parts">Awaiting Parts</option>
                        <option value="Resolved">Resolved / Complete</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Maintenance Diagnostic Logs & Remarks</label>
                    <textarea name="remarks" rows="5" placeholder="Describe the physical condition, components replaced, or actions taken..."></textarea>
                </div>

                <div class="btn-container">
                    <button type="submit" class="btn-save">Save Changes</button>
                    <a href="maintenanceList.jsp" class="btn-cancel">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>