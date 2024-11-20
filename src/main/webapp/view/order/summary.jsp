<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/summary.css">
    <link rel="stylesheet" href="../../css/colorSchemeForOrderStatus.css">
    <title>ShopKart | Order Summary</title>
</head>
<body>
<%@ include file="../../templates/header.jsp" %>
<div style="margin-top : 100px;">
    <div class="container">
        <h1>Order Summary</h1>
			<%
			  // Get the current date and time
			  Timestamp orderDate = new Timestamp(System.currentTimeMillis());
			  
			  // Format the order date
			  SimpleDateFormat dateFormat = new SimpleDateFormat("MMMM dd, yyyy");
			  String formattedOrderDate = dateFormat.format(orderDate);
			  
			  // Calculate the delivery date (5 days from today)
			  Calendar calendar = Calendar.getInstance();
			  calendar.setTime(orderDate);
			  calendar.add(Calendar.DAY_OF_MONTH, 5); // Add 5 days
			  Timestamp deliveryDate = new Timestamp(calendar.getTimeInMillis());
			  
			  // Format the delivery date
			  String formattedDeliveryDate = dateFormat.format(deliveryDate);
			%>
			<div class="thank-you-message">
			 <h3>Thank you for shopping with us!</h3>
			 <p>Order placed on: <strong id="order-date"><%= formattedOrderDate %></strong></p>
			 <p>Expected delivery by: <strong id="delivery-date"><%= formattedDeliveryDate %></strong></p>
			 
			 <!-- Order Status -->
			    <div class="order-status pending">Order Status: Pending</div>
			    <div class="order-status shipped">Order Status: Shipped</div>
			    <div class="order-status delivered">Order Status: Delivered</div>
			    <div class="order-status cancelled">Order Status: Cancelled</div>
			</div>
        </div>

        <!-- Shipping and Bill Summary -->
        <div class="summary-container">
            <div class="shipping-details">
                <h2>Shipping Details</h2>
                <p><strong>Name: </strong>Sonu Singh Patar</p>
                <p><strong>Email: </strong>sonusinghpatar2004@gmail.com</p>
                <p><strong>Address: </strong>D-29, Sukantanagar, Sector-IV, Salt Lake, Kolkata - 700106</p>
            </div>
        
            <div class="bill-summary">
                <h2>Bill Summary</h2>
                <p><strong>Total Amount: </strong>₹59,998.00</p>
                <p><strong>Shipping Charge: </strong>0.00</p>
                <p><strong>Discount Applied: </strong>20%</p>
                <p><strong>Payable Amount: </strong>₹47,998.20</p>
            </div>
        </div>     

        <!-- Product Summary -->
        <div class="product-summary">
            <h2>Product Summary</h2>
            <div class="product-item">
                <div class="product-details">
                    <p><strong>Product Name: </strong>Ultrabook Laptop</p>
                    <p><strong>Category: </strong>Electronics</p>
                    <p><strong>Price: </strong>₹29,999.00</p>
                    <p><strong>Brand: </strong>Dell</p>
                    <p><strong>Quantity: </strong>2</p>
                </div>
                <a href="product-link.html" class="product-image">
                    <img src="../../images/product/laptop.jpg" alt="Ultrabook Laptop" />
                </a>
            </div>
        </div>

        <!-- Buttons -->
        <div class="button-container">
            <button class="continue-shopping">Continue Shopping</button>
            <button class="buy-again">Buy Again</button>
        </div>
    <%@ include file="../../templates/footer.jsp" %>
</div>

</body>
</html>