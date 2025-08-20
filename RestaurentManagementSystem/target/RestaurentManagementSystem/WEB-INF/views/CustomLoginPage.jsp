<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            animation: backgroundTransition 20s infinite;
        }

        @keyframes backgroundTransition {
            0% {
                background: linear-gradient(to right, #3498db, #2c3e50);
            }
            25% {
                background: linear-gradient(to right, #2c3e50, #e74c3c);
            }
            50% {
                background: linear-gradient(to right, #e74c3c, #3498db);
            }
            75% {
                background: linear-gradient(to right, #3498db, #27ae60);
            }
            100% {
                background: linear-gradient(to right, #27ae60, #3498db);
            }
        }

        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .login-container h2 {
            color: #333;
        }

        .login-form {
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 18px;
            margin-bottom: 8px;
            color: #333;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 12px 20px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }

        .form-group button:hover {
            background-color: #2980b9;
        }

        .form-group button.reset {
            background-color: #95a5a6;
        }

        .form-group button.reset:hover {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form class="login-form" action="login2" method="post">
        <div class="form-group">
            <label for="uname">Username:</label>
            <input type="text" id="uname" name="uname" required>
        </div>
        <div class="form-group">
            <label for="upassword">Password:</label>
            <input type="password" id="upassword" name="upassword" required>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <div class="form-group">
            <button type="submit">Login</button>
            <button type="reset" class="reset">Reset</button>
            <button type="button" onclick="goBack()">Go Back</button>
            <script>
                function goBack() {
                    // Use the history object to navigate back
                    window.history.back();
                }
            </script>
        </div>
    </form>
</div>
</body>
</html>
