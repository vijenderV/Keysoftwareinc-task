<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 90%;
            max-width: 900px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
        }
        h1, h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .total {
            text-align: right;
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
        }
        .user {
            text-align: left;
            font-size: 16px;
            margin-bottom: 20px;
        }
        .back-button {
            display: block;
            margin: 30px auto 0;
            background-color: #3498db;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            text-align: center;
        }
        .back-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Order Confirmation</h1>
    <div class="user">
        <strong>User:</strong> ${user}
    </div>

    <table>
        <thead>
        <tr>
            <th>Product ID</th>
            <th>Type</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="cart" items="${cartList}">
            <tr>
                <td>${cart.productID}</td>
                <td>${cart.productType}</td>
                <td>${cart.productName}</td>
                <td>${cart.productPrice}</td>
                <td>${cart.productQuantity}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="total">
        Total Price: $${totalPrice}
    </div>

    <a href="/RestaurentManagementSystem_war_exploded/categories/getCategories" class="back-button">Back to Home</a>
</div>
</body>
</html>
