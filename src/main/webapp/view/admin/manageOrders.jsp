<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Manage Product Catalogue</title>
    <link rel="stylesheet" href="../../css/colorScheme.css" />
	<link rel="stylesheet" href="../../css/colorSchemeForOrderStatus.css" />
	<link rel="stylesheet" href="../../css/manageOrders.css" />
  </head>
  <body>
  <%@ include file="../../templates/admin_sidebar.jsp" %>
    <div style="margin-left: 300px; margin-right: 50px">
    	<%@ include file="../../templates/admin_header.jsp" %>
      <h2 style="font-size: 40px; margin-bottom: 20px">Manage Orders</h2>
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
      <div class="search-bar" style="margin : 20px;">
        <input
          name="prefix"
          type="number"
          style="color: black"
          placeholder="search cutomer-id"
        />
        <button type="submit">Search</button>
      </div>
      <table>
        <thead>
          <tr>
            <th>Order-ID</th>
            <th>Customer</th>
            <th>Product</th>
            <th>Quantity</th>
            <th>Order Date</th>
            <th>Delivered Date</th>
            <th>Status</th>
            <th>Total-amount</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
                <%   
	                for (int i = 1; i <= 20; i++) { 
	            %>
          <tr>
            <td>
              <h4><%= 100000 + i %></h4>
            </td>
            <td>
            	<div class="name">
            		<img src="../../images/product/tshirt.jpg">
            		<h4>Baibhab Karmakar(<%= 100000 + i %>)</h4>
            	</div>
            </td>
            <td>
            	<div class="name">
            		<img src="../../images/product/tshirt.jpg">
            		<h4>T-Shirt</h4>
            	</div>
            </td>
            <td><h4>100</h4></td>
            <td><h4>16th June , 2024</h4></td>
            <td>
              <h4>19th June , 2024</h4>
            </td>
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
              <h4>₹1,20,000</h4>
            </td>
            <td>
                <div class="buttons">
                    <button class="update">Update Status</button>
                    <button class="cancel">Cancel Order</button>
                </div>
            </td>
          </tr>
            <% 
                } 
            %>
        </tbody>
      </table>
    </div>
  </body>
</html>
