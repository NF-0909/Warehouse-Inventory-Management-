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

        /* --- CSS TAMBAHAN UNTUK BORANG PEMBAYARAN --- */
        .payment-card {
            margin-top: 30px;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .payment-card h3 {
            margin-top: 0;
            color: #333;
            border-bottom: 2px solid #eee;
            padding-bottom: 10px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }
        .form-group select, .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .btn-pay {
            background-color: #2ecc71;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            width: 100%;
            transition: background 0.2s;
        }
        .btn-pay:hover {
            background-color: #27ae60;
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
                <a href="customerprofile.jsp">Profile</a>
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

        <!-- --- BORANG PROCESS PAYMENT BAHARU (DI TAMBAH) --- -->
        <div class="dashboard-card" style="margin-top: 25px;">
            <div class="payment-card" style="width: 100%; border-radius: 0; box-shadow: none; padding: 0; background: transparent;">
                <h3 style="color: inherit; border-bottom: 1px solid #444; padding-bottom: 10px;">Process New Payment</h3>
                
                <form action="ProcessPaymentServlet" method="post" style="margin-top: 15px; max-width: 500px;">
                    
                    <div class="form-group">
                        <label style="color: inherit;">Select Rental ID / Invoice</label>
                        <select name="rentalID" required style="background: #fff; color: #333;">
                            <option value="R003">R003 - Ayisy (RM 15.00) - Pending</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label style="color: inherit;">Payment Method</label>
                        <select name="paymentMethod" required style="background: #fff; color: #333;">
                            <option value="">-- Choose Option --</option>
                            <option value="Online Banking">Online Banking (FPX)</option>
                            <option value="Credit Card">Credit / Debit Card</option>
                            <option value="E-Wallet">E-Wallet (Touch 'n Go / Boost)</option>
                        </select>
                    </div>

                    <button type="submit" class="btn-pay">Pay Now</button>
                </form>
            </div>
        </div>

    </div>

</div>

</body>
</html>