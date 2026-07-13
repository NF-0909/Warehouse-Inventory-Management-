<!DOCTYPE html>
<html>
<head>
    <title>Warehouse Inventory Management</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(to right, #2c3e50, #3498db);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background: white;
            padding: 40px;
            border-radius: 12px;
            width: 300px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
        }

        .login-box h2 {
            margin-bottom: 20px;
            color: #2c3e50;
        }

        .login-box input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-box button {
            width: 100%;
            padding: 10px;
            background: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .login-box button:hover {
            background: #2c3e50;
        }

        .footer-text {
            margin-top: 10px;
            font-size: 12px;
            color: gray;
        }
    </style>

</head>

<body>

<div class="login-box">

    <h2>Login Page</h2>

    <form action="LoginServlet" method="post">

        <input type="text" name="username" placeholder="Username" required>

        <input type="password" name="password" placeholder="Password" required>

        <button type="submit">Login</button>

    </form>
    <div style="margin-top: 10px;">
    Don't have an account? 
    <a href="register.jsp">Register here</a>
    </div>

    <div class="footer-text">
        Warehouse Inventory System
    </div>

</div>

</body>
</html>