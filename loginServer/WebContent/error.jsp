<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2dede;
            color: #a94442;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h2 {
            color: #a94442;
            margin-bottom: 20px;
        }
        a {
            text-decoration: none;
            color: #007BFF;
            font-size: 16px;
            padding: 10px;
            border: 1px solid #007BFF;
            border-radius: 4px;
            display: inline-block;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        a:hover {
            background-color: #007BFF;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login failed. Please try again.</h2>
        <a href="login.jsp">Back to Login</a>
    </div>
</body>
</html>
