<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 08-12-2023
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: url('https://restaurant.eatapp.co/hubfs/istockphoto-1094919124-612x612-jpg.jpeg') no-repeat center center fixed;
            background-size: cover;
            background: #f4f4f4;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            text-align: center;
        }

        h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #333;
        }

        .buttons {
            display: flex;
            justify-content: space-around;
        }

        .button {
            padding: 15px 30px;
            font-size: 1.2em;
            text-decoration: none;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .food-button {
            background-color: #5cb85c;
        }

        .other-button {
            background-color: #428bca;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropbtn {
            background-color: #428bca;
            color: #fff;
            padding: 15px 30px;
            font-size: 1.2em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: #333;
            padding: 12px 16px;
            display: block;
            text-decoration: none;
        }

        .dropdown-content a:hover {
            background-color: #f0f0f0;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }


    </style>
</head>
<body>

<div class="container">
    <h1>Welcome to Our Home Page</h1>
    <div class="buttons">
        </a><br><br>
        <a href="/RestaurentManagementSystem_war_exploded/food/getAllFoood" class="button food-button">Food Section</a>

    </div>
</div>

</body>
</html>
