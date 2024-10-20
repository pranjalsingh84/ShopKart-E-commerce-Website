<%@ page language="java" contentType="text/html; charset=UTF-8"
      pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopKart | Product Home</title>
    <link rel="stylesheet" href="../../css/home.css"/>
</head>
<body>
    <%@ include file="../../templates/header.jsp" %>

    <div class="welcome-msg">Hello name, welcome to our E-commerce website!</div>
    <div class="big-banner">
      <img src="../../images/banner1.jpg" alt="" />
    </div>

    <div class="collection">
      <div class="msg">Our Products</div>
    </div>
    <div class="grid-container">
      <% for (int i = 0; i < 15; i++) { %>
      <div class="grid-element">
        <a href="/product/details">
          <img
            src="../../images/Shirt_image.jpg"
            alt="Item 1"
          />
        </a>
        <p><b>Blue Shirt</b></p>
        <p>₹1,200</p>
      </div>
      <% } %>
    </div>
    <%@ include file="../../templates/footer.jsp" %>

    <script src="../../js/home.js"></script>
  </body>
</html>