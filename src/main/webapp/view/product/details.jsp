<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopKart | Product Details</title>
    <link rel="stylesheet" href="../../css/details.css" />
</head>
<body>
    
    <%@ include file="../../templates/header.jsp" %>

    <h2 class="heading">Product Details</h2>
    <div class="product-container">
      <div class="container-product-image">
        <div class="image-container">
          <img src="../../images/Shirt_image.jpg" />
        </div>
      </div>

      <div class="container-product-details">
        <h2>Product Info :</h2>
        <br>
        <div class="name">
          <div><b>Name : </b></div>
          <div>Shirt</div>
        </div>
        <div class="category">
          <div><b>Category : </b></div>
          <div>Wears</div>
        </div>
        <div class="price">
          <div><b>Price : </b></div>
          <div>₹1,200</div>
        </div>
        <div class="brand-name">
          <div><b>Brand : </b></div>
          <div>ZARA</div>
        </div>
        
      </div>
    </div>


    <div class="buttons">
      <button onclick="window.location.href='/product/home'">Continue Shopping</button>
      <button>Add to Cart</button>
    </div>
    
    <%@ include file="../../templates/footer.jsp" %>

    <script src="../../js/home.js"></script>
</body>
</html>