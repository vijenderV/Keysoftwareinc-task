<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Form</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="form-container">
    <%--@elvariable id="watch" type="com.restaurentmanagement.model.Watch"--%>

    <form:form action="/RestaurentManagementSystem_war_exploded/watches/addWatch" method="post" modelAttribute="watch">

        <div class="form-group">
            <label for="id">Watch ID:</label>
            <form:input path="id" id="id" required="true" />
        </div>

        <div class="form-group">
            <label for="model">Model:</label>
            <form:input path="model" id="model" required="true" />
        </div>

        <div class="form-group">
            <label for="color">Color:</label>
            <form:input path="color" id="color" required="true" />
        </div>

        <div class="form-group">
            <label for="price">Price:</label>
            <form:input path="price" id="price" required="true" />
        </div>

        <div class="form-group">
            <button type="submit">Submit</button>
        </div>

    </form:form>

</div>
</body>
</html>