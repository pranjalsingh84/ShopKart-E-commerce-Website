<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>ShopKart | Error 500</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/error.css" />
</head>
<body>
	<div class="error-no">Error 500!</div>
	<div class="error-name">Internal Server Error</div>
	<div class="error-msg">
		<p><b>Oops! Something went wrong on our end.</b></p>
		
		<p>We encountered an unexpected issue while processing your request. Our team has been notified and is working hard to resolve the problem as quickly as possible.</p>
		
		<p>Please try refreshing the page. If the issue persists, consider coming back later. Feel free to reach out to our support team if you need immediate assistance.</p>
	</div>
	<button class="go-back" onclick="window.location.href='/product'">
		Back to Product Catalog
	</button>
</body>
</html>