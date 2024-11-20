<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopKart | Manage Product Catalogue</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colorScheme.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/manageProductCatalogue.css"/>
</head>
<body>
	<%@ include file="../../templates/admin_sidebar.jsp" %>
	
    <div style="margin-left : 300px; margin-right : 100px;">
    	<%@ include file="../../templates/admin_header.jsp" %>
        <h2 style="font-size : 40px;">Manage Product Catalogue</h2>
    <table>
        <thead>
            <tr>
                <th>Product-ID</th>
                <th>Product-name(with Img)</th>
                <th>Product-Category</th>
                <th>Brand</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Discount</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
                for (int i = 1; i <= 20; i++) { 
            %>
            <tr>
                <td><h4><%= 100000 + i %></h4></td>
                <td>
                    <div class="details-product">
                        <img src="../../images/product/tshirt.jpg">
                        <h4>Men's T-shirt <%= i %></h4>
                    </div>
                </td>
                <td><h4>Wears</h4></td>
                <td><h4>Zara</h4></td>
                <td><h4>₹1200</h4></td>
                <td>
                    <h4><%= 20 + i %></h4>
                </td>
                <td>
                    <h4>0.00%</h4>
                </td>
                <td>
                    <div class="buttons">
                        <button class="delete">Delete</button>
                        <button class="update">Update</button>
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
    