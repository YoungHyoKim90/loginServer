<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h2>Welcome, <%= request.getSession().getAttribute("username") %>!</h2>
    <a href="logout">Logout</a>
</body>
</html>
