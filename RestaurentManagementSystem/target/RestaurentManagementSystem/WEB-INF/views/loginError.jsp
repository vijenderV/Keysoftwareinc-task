<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #message {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 12px 24px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-bottom: 10px;
        }

        button:hover {
            background-color: #45a049;
        }

        button.goBack {
            background-color: #3498db;
            margin-right: 10px;
        }

        button.goBack:hover {
            background-color: #2980b9;
        }

        .button-container {
            display: flex;
            gap: 10px;
        }
    </style>
</head>
<body>

<div id="message">
    <p>Your entering bad credentials, please login again.</p>
</div>

<div class="button-container">
    <form action="/RestaurentManagementSystem_war_exploded/home/login">
        <button type="submit">Login Again</button>
    </form>

    <button class="goBack" type="button" onclick="goBack()">Go Back</button>
</div>

<script>
    function goBack() {
        // Use the history object to navigate back
        window.history.back();
    }
</script>

</body>
</html>
