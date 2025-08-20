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
    <h2>Watches List</h2>
    <div class="button-container">
        <form:form action="/RestaurentManagementSystem_war_exploded/watches/watchRegister" method="get">
            <button type="submit" class="button">Add Watch</button>
        </form:form>
    </div>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Model</th>
            <th>Color</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="watch" items="${watchList}">
            <tr>
                <td>${watch.id}</td>
                <td>${watch.model}</td>
                <td>${watch.color}</td>
                <td>${watch.price}</td>
                <td>
                    <a href="/RestaurentManagementSystem_war_exploded/watches/updateWatchById/${watch.id}">
                        <button class="upateAndDelete">Update</button>
                    </a>
                    <a href="/RestaurentManagementSystem_war_exploded/watches/deleteWatchById/${watch.id}">
                        <button class="upateAndDelete">Delete</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="button-container">
        <a href="/RestaurentManagementSystem_war_exploded/logout">
            <button class="button">Logout</button>
        </a>
    </div>

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