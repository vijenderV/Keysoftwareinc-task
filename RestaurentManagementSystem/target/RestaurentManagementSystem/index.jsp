<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Management</title>

    <style>
        body {
            background: url('https://www.figma.com/community/resource/d2c89271-5755-49f6-a5ca-0cb3eda26bed/thumbnail') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            opacity: 0;
            animation: fadeIn 1.5s forwards;

            /* Make right alignment work */
            display: flex;
            flex-direction: column;
            align-items: flex-end; /* Aligns to right side */
            justify-content: flex-start; /* Stays at top */
            padding: 40px; /* Add some spacing from the edge */
        }

        h1 {
            color: #ff5079;
            margin-bottom: 20px;
            animation: floatIn 2s ease-in-out;
        }

        .login-button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            animation: blink 2s infinite;
            transition: background-color 0.3s ease-in-out;
        }

        .login-button:hover {
            background-color: #218838;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes floatIn {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        @keyframes blink {
            0%, 20%, 50%, 80%, 100% { opacity: 1; }
            40%, 60% { opacity: 0; }
        }
    </style>
</head>

<body>

<h1>Welcome to Ecommerce Site</h1>

<a style="color: red" href="home/loginAndSignUp">
    <button class="login-button">Please Login</button>
</a>

</body>

</html>
