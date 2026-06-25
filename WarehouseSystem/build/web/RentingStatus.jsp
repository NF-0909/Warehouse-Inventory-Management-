<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Renting Status</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="sidebar">

    <!-- SIDEBAR -->

    <div class="sidebar-items">

        <div>

            <div class="logo">
                <a href="Dashboard.jsp">
                    Equipment Rental System
                </a>
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

            <div class="avatar"></div>

            <div>
                <h3>Admin User</h3>
                <p style="color:#999;">Equipment Manager</p>
            </div>

        </div>

    </div>

    <!-- MAIN CONTENT -->

    <div class="main">

        <div class="welcome">
            <h1>Renting Status</h1>
            <p>Current rental records and status</p>
        </div>

        <div class="dashboard-card">

            <div class="past-rental" style="width:100%;">

                <h3>Rental Records</h3>

                <table>

                    <tr>
                        <th>Rental ID</th>
                        <th>Equipment</th>
                        <th>User</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Status</th>
                    </tr>

                    <tr>
                        <td>R001</td>
                        <td>Canon DSLR Camera</td>
                        <td>Shah</td>
                        <td>20/06/2026</td>
                        <td>22/06/2026</td>
                        <td>Returned</td>
                    </tr>

                    <tr>
                        <td>R002</td>
                        <td>Projector</td>
                        <td>Irfan</td>
                        <td>21/06/2026</td>
                        <td>25/06/2026</td>
                        <td>Ongoing</td>
                    </tr>

                    <tr>
                        <td>R003</td>
                        <td>Tripod</td>
                        <td>Ayisy</td>
                        <td>22/06/2026</td>
                        <td>24/06/2026</td>
                        <td>Pending</td>
                    </tr>

                </table>

            </div>

        </div>

    </div>

</div>

</body>
</html>