<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>ShopKart | Error 404</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/error.css" />
</head>
<body>
	<div class="error-no">Error 404!</div>
	<div class="error-name">Page Not Found</div>
	<div class="error-msg">
		<p><b>Oh no!</b> It seems the page you're looking for has wandered off or no longer exists.</p>
		
		<p>Check the URL for any typos. Return to the product catalog to start fresh. Explore our site map for more content.</p> 
		
		<p>If you believe this is a mistake, please contact our support team for assistance.</p>
	</div>
	<button class="go-back" onclick="window.location.href='/product'">
		Back to Product Catalog
	</button>
</body>
</html>