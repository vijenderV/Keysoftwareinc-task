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
    <%--@elvariable id="user" type="com.restaurentmanagement"--%>

    <form:form action="/RestaurentManagementSystem_war_exploded/user/addUser" method="post" modelAttribute="user">

        <div class="form-group">
            <label for="uid">User ID:</label>
            <form:input path="uid" id="uid"/>
            <form:errors path="uid" cssStyle="color: #ff5079"></form:errors>
        </div>

        <div class="form-group">
            <label for="uname">Username:</label>
            <form:input path="uname" id="uname" />
            <form:errors path="uname" cssStyle="color: #ff5079"></form:errors>
        </div>

        <div class="form-group">
            <label for="upassword">Password:</label>
            <form:password path="upassword" id="upassword"  />
            <form:errors path="upassword" cssStyle="color: #ff5079"></form:errors>
        </div>

        <div class="form-group">
            <label for="urole">Role:</label>
            <form:select path="urole" id="urole" >
                <form:option value="" label="-- Select Role --" />
                <form:option value="ROLE_ADMIN" label="Admin" />
                <form:option value="ROLE_USER" label="User" />
            </form:select>
            <form:errors path="urole" cssStyle="color: #ff5079"></form:errors>
        </div>

        <div class="form-group">
            <label for="umobile">Mobile:</label>
            <form:input path="umobile" id="umobile" />
            <form:errors path="umobile" cssStyle="color: #ff5079"></form:errors>
        </div>

        <div class="form-group">
            <button type="submit">Submit</button>
        </div>

        <div class="form-group">
              <button type="button" onclick="goBack()">Go Back</button>
        </div>

        <script>
            function goBack() {
                // Use the history object to navigate back
                window.history.back();
            }
        </script>

        <input type="hidden" name="name" value="false" />
    </form:form>

</div>
</body>
</html>