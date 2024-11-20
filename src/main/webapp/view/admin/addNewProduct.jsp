<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopKart | Add New Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colorScheme.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addNewProduct.css" />
</head>
<body>
	<%@ include file="../../templates/admin_sidebar.jsp" %>
    <div style="margin-left : 300px; margin-right : 100px;">
    	<%@ include file="../../templates/admin_header.jsp" %>
        <div class="form-container">
            <h2>Add New Product</h2>
            <form action="saveProduct" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="name">Product Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="category">Category</label>
                    <input type="text" id="category" name="category" required>
                </div>
                <div class="form-group">
                    <label for="brand">Brand</label>
                    <input type="text" id="brand" name="brand" required>
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="number" step="0.01" id="price" name="price" required>
                </div>
                <div class="form-group">
                    <label for="stock">Stock</label>
                    <input type="number" id="stock" name="stock" required>
                </div>
                <div class="form-group">
                    <label for="discount">Discount (%)</label>
                    <input type="number" step="0.01" id="discount" name="discount" value="0.00">
                </div>
                <div class="form-group">
                    <label for="image">Product Image</label>
                    <input type="file" id="image" name="image" accept="image/*" required>
                </div>
                <div class="button">
                    <button type="submit">Add New Product</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>


