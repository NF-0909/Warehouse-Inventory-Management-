<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Equipment Catalog</title>

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

                <a href="Dashboard.jsp">Dashboard</a>

                <a href="EquipmentCatalog.jsp">
                    Equipment Catalog
                </a>

                <a href="RentingStatus.jsp">
                    Renting Status
                </a>

                <a href="Transaction.jsp">
                    Transaction
                </a>

                <a href="customerprofile.jsp">
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

    <!-- MAIN CONTENT -->

    <div class="main">

        <div class="welcome">

            <h1>Equipment Catalog</h1>

            <p>Available equipment for rental.</p>

        </div>

        <div class="dashboard-card">

            <div class="past-rental" style="width:100%;">

                <h3>Equipment List</h3>

                <table>

                    <tr>
                        <th>ID</th>
                        <th>Equipment</th>
                        <th>Category</th>
                        <th>Status</th>
                        <th>Price/Day</th>
                        <th>Action</th> <!-- NEW -->
                    </tr>

                    <!-- Equipment 1 -->
                    <tr>
                        <td>EQ001</td>
                        <td>Canon DSLR Camera</td>
                        <td>Camera</td>
                        <td>Available</td>
                        <td>RM50</td>

                        <td>
                            <form action="AddToCartServlet" method="post">
                                <input type="hidden" name="equipmentID" value="EQ001">
                                <input type="submit" value="Add to Cart">
                            </form>
                        </td>
                    </tr>

                    <!-- Equipment 2 -->
                    <tr>
                        <td>EQ002</td>
                        <td>Projector</td>
                        <td>Electronic</td>
                        <td>Available</td>
                        <td>RM80</td>

                        <td>
                            <form action="AddToCartServlet" method="post">
                                <input type="hidden" name="equipmentID" value="EQ002">
                                <input type="submit" value="Add to Cart">
                            </form>
                        </td>
                    </tr>

                    <!-- Equipment 3 -->
                    <tr>
                        <td>EQ003</td>
                        <td>Tripod</td>
                        <td>Accessory</td>
                        <td>Rented</td>
                        <td>RM15</td>

                        <td>
                            <button disabled>Unavailable</button>
                        </td>
                    </tr>

                    <!-- Equipment 4 -->
                    <tr>
                        <td>EQ004</td>
                        <td>Microphone</td>
                        <td>Audio</td>
                        <td>Available</td>
                        <td>RM20</td>

                        <td>
                            <form action="AddToCartServlet" method="post">
                                <input type="hidden" name="equipmentID" value="EQ004">
                                <input type="submit" value="Add to Cart">
                            </form>
                        </td>
                    </tr>

                    <!-- Equipment 5 -->
                    <tr>
                        <td>EQ005</td>
                        <td>Speaker</td>
                        <td>Audio</td>
                        <td>Available</td>
                        <td>RM35</td>

                        <td>
                            <form action="AddToCartServlet" method="post">
                                <input type="hidden" name="equipmentID" value="EQ005">
                                <input type="submit" value="Add to Cart">
                            </form>
                        </td>
                    </tr>

                </table>

            </div>

        </div>

        <div class="button-container">

            <div class="rent-now">

                <a href="Transaction.jsp">
                    Rent Equipment
                </a>

            </div>

        </div>

    </div>

</div>

</body>
</html>