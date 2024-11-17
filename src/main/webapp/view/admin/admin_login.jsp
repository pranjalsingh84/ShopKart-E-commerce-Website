<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ShopKart | Admin Login</title>
    <link rel="stylesheet" href="../../css/admin_login.css">
    <link rel="stylesheet" href="../../css/colorScheme.css" />
</head>
<body>
    <form action="/admin_login" method="post">
        <div class="adminLogin-container">
            <h1>Admin Login</h1>
            <div class="form-group">
                <input type="email" name="email" placeholder="Email" required />
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Password" required />
            </div>
            <div class="form-group">
                <input type="password" name="securityKey" placeholder="Security Key" required />
            </div>
            <div class="form-group">
                <button type="submit" class="btn">Log in</button>
            </div>
           
        </div>
    </form>
</body>
</html>
