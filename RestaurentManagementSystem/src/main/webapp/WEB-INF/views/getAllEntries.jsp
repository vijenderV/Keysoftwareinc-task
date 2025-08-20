<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart Entries</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: lightgreen;
            color: #fff;
        }

        .button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }

        .upateAndDelete{
            background-color: red;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }

        .button-container {
            text-align: left;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Cart Entries</h2>

    <!-- Continue Shopping Button -->
    <div class="button-container">
        <form:form action="/RestaurentManagementSystem_war_exploded/carts/continewShopping" method="get">
            <button type="submit" class="button">Continue Shopping</button>
        </form:form>
    </div>

    <!-- Place Order Button (Only if cart has entries) -->
    <c:if test="${not empty carts}">
        <div class="button-container">
            <form:form action="/RestaurentManagementSystem_war_exploded/orders/placeOrder" method="get">
                <button type="submit" class="button">Place Order</button>
            </form:form>
        </div>
    </c:if>

    <!-- Cart Table -->
    <table>
        <thead>
        <tr>
            <th>UserID</th>
            <th>ProductID</th>
            <th>ProductType</th>
            <th>ProductName</th>
            <th>ProductPrice</th>
            <th>ProductQuantity</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="cart" items="${carts}">
            <tr>
                <td>${cart.userId}</td>
                <td>${cart.productID}</td>
                <td>${cart.productType}</td>
                <td>${cart.productName}</td>
                <td>${cart.productPrice}</td>
                <td>${cart.productQuantity}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <!-- Logout Button -->
    <div class="button-container">
        <a href="/RestaurentManagementSystem_war_exploded/logout">
            <button class="button">Logout</button>
        </a>
    </div>

    <!-- Go Back Button -->
    <div class="button-container">
        <button type="button" class="button" onclick="goBack()">Go Back</button>
    </div>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</div>
</body>
</html>
