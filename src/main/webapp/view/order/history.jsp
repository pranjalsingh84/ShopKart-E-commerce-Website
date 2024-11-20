<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>ShopKart | Your orders</title>
	<link rel="stylesheet" href="../../css/history.css"/>
	<link rel="stylesheet" href="../../css/colorScheme.css" />
	<link rel="stylesheet" href="../../css/colorSchemeForOrderStatus.css" />
</head>
<body>
<%@ include file="../../templates/header.jsp" %>
	<div style="margin-top: 100px">
		<div class="container-filter-shippingCategory">
	        <div class="dropdown-container">
	            <label style="color : var(--base-text);"for="shippingCategory">Select Order Status:</label>
	            <select name="shippingCategory" id="shippingCategory">
	                <option value="blank"></option>
	                <option value="all">All</option>
	                <option value="pending">Pending</option>
	                <option value="shipped">Shipped</option>
	                <option value="delivered">Delivered</option>
	                <option value="cancelled">Cancelled</option>
	            </select>
	        </div>
	        <div class="categry pending">
	            <h2 id="pending-text">Pending</h2>
	            <h1>30</h1>
	        </div>
	        <div class="categry shipped">
	            <h2>Shipped</h2>
	            <h1>30</h1>
	        </div>
	        <div class="categry delivered">
	            <h2>Delivered</h2>
	            <h1>30</h1>
	        </div>
	        <div class="categry cancelled">
	            <h2>Cancelled</h2>
	            <h1>30</h1>
	        </div>
	    </div>
	
	    <h2 style="font-size : 40px; margin-bottom : 40px;">Your Order History</h2>
	
	    <table>
	        <thead>
	            <tr>
	                <th>Order-ID</th>
	                <th>Product-details</th>
	                <th>Paid-amount</th>
	                <th>Order-Date</th>
	                <th>Delivery-Date</th>
	                <th>Status</th>
	                <th>Actions</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr>
	                <td><h4>100001</h4></td>
	                <td>
	                    <div class="details-product">
	                        <img src="../../images/product/tshirt.jpg">
	                        <h4>Men's T-shirt</h4>
	                    </div>
	                </td>
	                <td><h4>₹1200</h4></td>
	                <td><h4>13th July , 2024</h4></td>
	                <td><h4>16th July , 2024</h4></td>
	                <td>
	                    <div class="status-pending">
	                        <h3>Pending</h3>
	                    </div>
	                    <div class="status-shipped">
	                        <h3>Shipped</h3>
	                    </div>
	                    <div class="status-delivered">
	                        <h3>Delivered</h3>
	                    </div>
	                    <div class="status-cancelled">
	                        <h3>Cancelled</h3>
	                    </div>
	
	                </td>
	                <td>
	                    <div class="buttons">
	                        <button class="buy">Buy Again</button>
	                        <button class="cancel">Cancel Order</button>
	                    </div>
	                </td>
	            </tr>
	
	
	            <tr>
	                <td><h4>100002</h4></td>
	                <td>
	                    <div class="details-product">
	                        <img src="../../images/product/tshirt.jpg">
	                        <h4>Men's T-shirt</h4>
	                    </div>
	                </td>
	                <td><h4>₹1200</h4></td>
	                <td><h4>13th July , 2024</h4></td>
	                <td><h4>16th July , 2024</h4></td>
	                <td>
	                    <div class="status-pending">
	                        <h3>Pending</h3>
	                    </div>
	                    <div class="status-shipped">
	                        <h3>Shipped</h3>
	                    </div>
	                    <div class="status-delivered">
	                        <h3>Delivered</h3>
	                    </div>
	                    <div class="status-cancelled">
	                        <h3>Cancelled</h3>
	                    </div>
	
	                </td>
	                <td>
	                    <div class="buttons">
	                        <button class="buy">Buy Again</button>
	                        <button class="cancel">Cancel Order</button>
	                    </div>
	                </td>
	            </tr>
	        </tbody>
	    </table>
	    
	    <div class="main-button">
	    	<button>Return To product Catalog</button>
	    </div>
	    
	    <%@ include file="../../templates/footer.jsp" %>
	</div>
</body>
</html>