<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Items Records</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 800px;
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
            background-color:lightgreen;
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
    <h2>Smart Phones List</h2>
    <div class="button-container">
        <form:form action="/RestaurentManagementSystem_war_exploded/smartPhones/smartPhoneRegister" method="get">
            <button type="submit" class="button">Add Item</button>
        </form:form>
    </div>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Model</th>
            <th>RAM</th>
            <th>ROM</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <!-- Iterate over your student records here -->
        <c:forEach var="smartphone" items="${smartPhoneList}">
            <tr>
                <td>${smartphone.id}</td>
                <td>${smartphone.name}</td>
                <td>${smartphone.model}</td>
                <td>${smartphone.ram}</td>
                <td>${smartphone.rom}</td>
                <td>${smartphone.price}</td>
                <td>
                    <a href="/RestaurentManagementSystem_war_exploded/smartPhones/updateSmartPhoneById/${smartphone.id}">
                        <button class="upateAndDelete">Update</button>
                    </a>
                    <a href="/RestaurentManagementSystem_war_exploded/smartPhones/deleteSmartPhoneById/${smartphone.id}">
                        <button class="upateAndDelete">Delete</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="button-container">
        <a href="/RestaurentManagementSystem_war_exploded/logout">  <button class="button">Logout</button> </a>
    </div>

    <div class="button-container">
        <button type="button" class="button" onclick="goBack()">Go Back</button>
    </div>

    <script>
        function goBack() {
            // Use the history object to navigate back
            window.history.back();
        }
    </script>
</div>
</body>
</html>