<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Warehouse System</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        .container {
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            padding: 3.5rem 4rem;
            border-radius: 12px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.15);
            max-width: 450px;
            width: 100%;
        }

        h1 {
            font-size: 2.4rem;
            margin-bottom: 1.2rem;
            font-weight: 600;
            letter-spacing: 0.5px;
        }

        p {
            color: #e0e0e0;
            margin-bottom: 2.5rem;
            font-size: 1rem;
            line-height: 1.5;
        }

        .btn-login {
            display: inline-block;
            text-decoration: none;
            background-color: #ffffff;
            color: #1e3c72;
            padding: 0.8rem 2.8rem;
            font-size: 1.1rem;
            font-weight: 600;
            border-radius: 30px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .btn-login:hover {
            background-color: #f0f0f0;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
        }

        .btn-login:active {
            transform: translateY(0);
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Warehouse System</h1>
        <p>Manage inventory, tracking, and logistics efficiently.</p>
        <a href="login.jsp" class="btn-login">Login</a>
    </div>

</body>
</html>