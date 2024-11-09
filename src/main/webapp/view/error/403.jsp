<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>ShopKart | Error 403</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/error.css" />
</head>
<body>
	<div class="error-no">Error 403!</div>
	<div class="error-name">Page Forbidden</div>
	<div class="error-msg">
		<p><b>Oops!</b> It looks like you don’t have permission to access this page.</p>
		
		<p>You might not have the necessary credentials, or the resource may be restricted.</p> 
		
		<p>If you believe this is an error, please contact the site administrator for assistance.</p>
	</div>
	<button class="log-in" onclick="window.location.href='/logout'">
		Back to Login
	</button>
</body>
</html>