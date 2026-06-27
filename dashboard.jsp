<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Dashboard</title>

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="sidebar">

    <!-- LEFT SIDEBAR -->

    <div class="sidebar-items">

        <div>

            <div class="logo">
                <a href="Dashboard.jsp">
                    Equipment Rental System
                </a>
            </div>

            <div class="menu">

                <a href="dashboard.jsp">Dashboard</a>

                <a href="EquipmentCatalog.jsp">
                    Equipment Catalog
                </a>

                <a href="RentingStatus.jsp">
                    Renting Status
                </a>

                <a href="Transaction.jsp">
                    Transaction
                </a>

                <a href="Profile.jsp">
                    Profile
                </a>

                <br><br><br><br>

                <a href="Login.jsp">
                    Logout
                </a>

            </div>

        </div>

        <div class="profile">

            <div class="avatar"></div>

            <div>
                <h3>Admin User</h3>
                <p style="color:#999;">Equipment Manager</p>
            </div>

        </div>

    </div>

    <!-- RIGHT CONTENT -->

    <div class="main">

        <div class="welcome">
            <h1>Welcome Admin</h1>
            <p>Equipment Rental Management Dashboard</p>
        </div>

        <!-- STATISTICS -->

        <div class="stats">

            <div class="stat-card">
                <h2>120</h2>
                <p>Total Equipment</p>
            </div>

            <div class="stat-card">
                <h2>80</h2>
                <p>Available</p>
            </div>

            <div class="stat-card">
                <h2>30</h2>
                <p>Currently Rented</p>
            </div>

            <div class="stat-card">
                <h2>10</h2>
                <p>Maintenance</p>
            </div>

        </div>

        <!-- MAIN DASHBOARD -->

        <div class="dashboard-card">

            <div class="popular-items">

                <h3>Most Rented Equipment</h3>

                <div class="popular-image">
                    <img src="images/camera.png" alt="Camera">
                </div>

                <h4>Canon DSLR Camera</h4>

                <p>Total Rentals: 100 rentals/month</p>

            </div>

            <div class="past-rental">

                <h3>Recent Rental History</h3>

                <table>

                    <thead>
                        <tr>
                            <th>Rental ID</th>
                            <th>Equipment</th>
                            <th>Start</th>
                            <th>End</th>
                            <th>Status</th>
                        </tr>
                    </thead>

                    <tbody>

                        <tr>
                            <td>#1001</td>
                            <td>Canon Camera</td>
                            <td>20/06/2026</td>
                            <td>22/06/2026</td>
                            <td>Returned</td>
                        </tr>

                        <tr>
                            <td>#1002</td>
                            <td>Projector</td>
                            <td>21/06/2026</td>
                            <td>24/06/2026</td>
                            <td>Ongoing</td>
                        </tr>

                        <tr>
                            <td>#1003</td>
                            <td>Tripod</td>
                            <td>22/06/2026</td>
                            <td>25/06/2026</td>
                            <td>Pending</td>
                        </tr>

                    </tbody>

                </table>

            </div>

        </div>

        <div class="button-container">

            <div class="rent-now">
                <a href="EquipmentCatalog.jsp">
                    Browse Equipment
                </a>
            </div>

        </div>

    </div>

</div>

</body>
</html>