<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopKart | Your Cart</title>
    <link rel="stylesheet" href="../../css/cart.css" />
</head>
<body>
    <%@ include file="../../templates/header.jsp" %>
    
    <div class="cart-owner">Owner's Cart :</div>
    <div class="cart-address">Delivery Address : Kolkata, India</div>
    <div class="cart-container">
      <table class="cart-items">
        <thead>
          <tr>
            <th scope="col" class="item-name">Item Name</th>
            <th scope="col" class="item-price">Price</th>
            <th scope="col" class="item-qty">Quantity</th>
            <th scope="col" class="item-total-price">Total Price</th>
            <th scope="col" class="delete-action">Actions</th>
          </tr>
        </thead>
        <tbody>
          <% for (int i = 0; i < 4; i++){ %>
          	 <tr>
	            <td class="item-name">
	              <a href="/product/details">
		              <img
		                src="../../images/Shirt_image.jpg"
		                alt="Item 1"
		                class="product-img"
		              />
	              </a>
	              Blue Shirt
	            </td>
	            <td class="item-price">₹1,200</td>
	            <td class="item-qty">2</td>
	            <td class="item-total-price">₹2,400</td>
	            <td class="delete-action">
	              <div class="buttons">
	                <button class="delete-item">Delete Item</button>
	                <button class="delete-item">Add more</button>
	              </div>
	            </td>
	          </tr>
          <% } %>
        </tbody>
      </table>
      <div class="checkout">
        <h3>Total Price : ₹9,600</h3>
      </div>
    </div>

    <div class="button">
      <button onclick="window.location.href='/product/home'">
        Continue Shopping!
      </button>
      <button>Order Now</button>
    </div>
	<%@ include file="../../templates/footer.jsp" %>

    <script src="../../js/home.js"></script>
</body>
</html>