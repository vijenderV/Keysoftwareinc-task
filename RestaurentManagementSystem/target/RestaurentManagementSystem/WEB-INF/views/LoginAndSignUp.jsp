<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Sign Up</title>
    <style>
        body {
            background: url('https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            border: none;
            border-radius: 5px;
            margin: 10px;
            cursor: pointer;
            animation: blink 2s infinite;
            transition: background-color 0.3s ease-in-out;
        }

        .login {
            background-color: #3498db;
        }

        .signup {
            background-color: #e74c3c;
        }

        .title {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        @keyframes blink {
            0%, 20%, 50%, 80%, 100% {
                opacity: 1;
            }
            40%, 60% {
                opacity: 0;
            }
        }
    </style>
</head>

<body>

<a href="/RestaurentManagementSystem_war_exploded/home/login"><button class="button login">Login</button></a>
<a href="/RestaurentManagementSystem_war_exploded/user/register"><button class="button signup">Sign Up</button></a>

</body>

</html>