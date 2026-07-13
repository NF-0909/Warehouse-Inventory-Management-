<!DOCTYPE html>
<html>
<head>
    <title>Register Page</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(to right, #1abc9c, #3498db);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-box {
            background: white;
            padding: 40px;
            border-radius: 12px;
            width: 320px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
        }

        .register-box h2 {
            margin-bottom: 20px;
            color: #2c3e50;
        }

        .register-box input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .register-box button {
            width: 100%;
            padding: 10px;
            background: #1abc9c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }

        .register-box button:hover {
            background: #16a085;
        }

        .link-text {
            margin-top: 10px;
            font-size: 13px;
        }

        .link-text a {
            color: #3498db;
            text-decoration: none;
        }

        .link-text a:hover {
            text-decoration: underline;
        }
    </style>

</head>

<body>

<div class="register-box">

    <h2>Create Account</h2>

    <form action="RegisterServlet" method="post">

        <input type="text" name="username" placeholder="Username" required>

        <input type="password" name="password" placeholder="Password" required>

        <input type="password" name="confirmPassword" placeholder="Confirm Password" required>

        <button type="submit">Register</button>

    </form>

    <div class="link-text">
        Already have an account? <a href="login.jsp">Login</a>
    </div>

</div>

</body>
</html>