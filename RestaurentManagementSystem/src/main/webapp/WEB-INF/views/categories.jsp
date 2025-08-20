<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Categories</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-image: url('https://c4.wallpaperflare.com/wallpaper/421/745/93/china-tourism-best-hotels-vacation-wallpaper-preview.jpg');
            background-size: cover;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background-attachment: fixed;
        }

        .container {
            text-align: center;
            background-color: rgba(0,0,0,0.5);
            padding: 40px;
            border-radius: 10px;
            position: relative;
        }

        h1 {
            font-size: 2em;
            margin-bottom: 30px;
            color: #fff;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .category-button {
            padding: 15px 30px;
            font-size: 18px;
            color: #fff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        .smartphone-btn {
            background-color: #428bca;
        }

        .smartphone-btn:hover {
            background-color: #266080;
        }

        .watch-btn {
            background-color: #5cb85c;
        }

        .watch-btn:hover {
            background-color: #398439;
        }

        /* Cart button outside container */
        .cart-button-container {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .cart-button {
            background-color: #ff5079;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
        }

        .cart-button:hover {
            background-color: #e04370;
        }
    </style>
</head>
<body>

<!-- Cart Button at top-right of page -->
<div class="cart-button-container">
    <form action="/RestaurentManagementSystem_war_exploded/carts/getAllEntries" method="get">
        <button class="cart-button" type="submit">Cart</button>
    </form>
</div>

<div class="container">
    <h1>Categories</h1>
    <div class="button-container">
        <form action="/RestaurentManagementSystem_war_exploded/smartPhones/showAllSmartPhones" method="get">
            <button class="category-button smartphone-btn" type="submit">Smart Phones</button>
        </form>
        <form action="/RestaurentManagementSystem_war_exploded/watches/showAllWatches" method="get">
            <button class="category-button watch-btn" type="submit">Watches</button>
        </form>
    </div>
</div>

</body>
</html>
