<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transaction History</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Status badge styles to keep things clean */
        .status-paid { color: #2ecc71; font-weight: bold; }
        .status-pending { color: #f1c40f; font-weight: bold; }
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
            <div class="avatar"></div>
            <div>
                <h3>Admin User</h3>
                <p style="color:#999;">Equipment Manager</p>
            </div>
        </div>
    </div>

    <div class="main">

        <div class="welcome">
            <h1>Transaction History</h1>
            <p>Track all payments, rental fees, and financial invoices</p>
        </div>

        <div class="dashboard-card">
            <div class="past-rental" style="width:100%;">
                <h3>Recent Payments</h3>

                <table>
                    <tr>
                        <th>Transaction ID</th>
                        <th>Rental ID</th>
                        <th>User</th>
                        <th>Amount (RM)</th>
                        <th>Payment Date</th>
                        <th>Status</th>
                    </tr>
                    <tr>
                        <td>TXN1001</td>
                        <td>R001</td>
                        <td>Shah</td>
                        <td>120.00</td>
                        <td>20/06/2026</td>
                        <td><span class="status-paid">Paid</span></td>
                    </tr>
                    <tr>
                        <td>TXN1002</td>
                        <td>R002</td>
                        <td>Irfan</td>
                        <td>50.00</td>
                        <td>21/06/2026</td>
                        <td><span class="status-paid">Paid</span></td>
                    </tr>
                    <tr>
                        <td>TXN1003</td>
                        <td>R003</td>
                        <td>Ayisy</td>
                        <td>15.00</td>
                        <td>22/06/2026</td>
                        <td><span class="status-pending">Pending</span></td>
                    </tr>
                </table>

            </div>
        </div>

    </div>

</div>

</body>
</html>