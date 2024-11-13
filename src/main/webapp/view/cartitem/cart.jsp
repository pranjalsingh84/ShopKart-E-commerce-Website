<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.springspartans.shopkart.model.Product, com.springspartans.shopkart.model.CartItem, com.springspartans.shopkart.model.Customer"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShopKart | Your Cart</title>
<link rel="stylesheet" href="../../css/cart.css" />
<link rel="stylesheet" href="../../css/colorScheme.css" />
</head>
<body>
	<%@ include file="../../templates/header.jsp"%>

	<div style="margin-top: 100px">
		<%
		if (customer == null) {
		%>
		<div class="error">
			<h1>You're not logged in!</h1>
			<h2>Please login to view your cart</h2>
		</div>
		<%
		} else {
		%>
		<div class="cart-owner"><%=customer.getName()%>'s Cart
		</div>
		<div class="cart-address">
			Delivery Address :
			<%=customer.getAddress()%></div>

		<div class="cart-container">
			<%
			List<CartItem> cart = (List<CartItem>) request.getAttribute("cart");
			%>
			<%
			if (cart == null || cart.size() == 0) {
			%>
			<h2 id="empty-msg">Your Cart is empty!</h2>
			<%
			} else {
			%>
			<table class="cart-items">
				<thead>
					<tr>
						<th scope="col" class="item-name">Item Name</th>
						<th scope="col" class="item-date">Added to your cart on</th>
						<th scope="col" class="item-price">Price</th>
						<th scope="col" class="item-qty">Quantity</th>
						<th scope="col" class="item-total-price">Total Price</th>
						<th scope="col" class="delete-action">Actions</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (CartItem item : cart) {
					%>
					<tr>
						<td class="item-name"><a
							href="/product/<%=item.getProduct().getId()%>"> <img
								src="../../images/product/<%=item.getProduct().getImage()%>"
								alt="<%=item.getProduct().getName()%>" class="product-img" />
						</a> <%=item.getProduct().getName()%></td>
						<%
						Timestamp orderDate = item.getOrderDate();
						String formattedDate = "";
						if (orderDate != null) {
							Date date = new Date(orderDate.getTime());
							SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy, HH:mm:ss");
							formattedDate = formatter.format(date);
						} else {
							formattedDate = "Date not available";
						}
						%>
						<td class="item-date"><%=formattedDate%></td>
						<td class="item-price">₹<%=item.getProduct().getPrice()%></td>
						<td class="item-qty"><%=item.getQuantity()%></td>
						<td class="item-total-price">₹<%=item.getProduct().getPrice() * item.getQuantity()%></td>
						<td class="delete-action">
							<div class="buttons">
								<form action="/cartitem/delete/<%=item.getSlno()%>"
									method="post">
									<button class="delete-item">Delete Item</button>
								</form>
								<form action="/cartitem/addmore/<%=item.getSlno()%>"
									method="post">
									<button class="add-more">Add more</button>
								</form>
							</div>
						</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<div class="checkout">
				<h3>
					Total Price : ₹<%=request.getAttribute("totalPrice")%></h3>
			</div>
			<%
			}
			%>
		</div>
		<div class="button">
			<button id="continue-button" onclick="window.location.href='/product'">Continue Shopping!</button>
			<button id="order-button">Order Now</button>
		</div>
		<%
		}
		%>
	</div>

	<%@ include file="../../templates/footer.jsp"%>
</body>
</html>
