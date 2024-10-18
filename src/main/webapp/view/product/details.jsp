<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>ShopKart | Product Details</title>
    <link rel="stylesheet" href="../../css/details.css" />
  </head>
  <body>
    <nav>
      <div class="navbar">
        <div class="logo">Ecommerce-website</div>
        <div class="search-bar">
          <input type="text" placeholder="search product" />
          <button>Search</button>
        </div>
        <div class="sections">
          <button>About us</button>
          <button class="cart">
            Your cart <img src="../../images/cart.svg" alt="" />
          </button>
          <button class="profile" id="profile-btn">
            Profile <img src="../../images/profile.svg" />
          </button>
        </div>
      </div>
    </nav>

    <div class="profile-form" id="profile-form">
      <h2>Hey name ! See your Profile</h2>
      <div class="avatar"><img src="../../images/avatar.jpg" alt="" /></div>
      <div><b>Name :</b> Undefined</div>
      <div><b>Email-id :</b> Undefined</div>
      <div><b>Address :</b> Undefined</div>
      <div><b>Phone number :</b> Undefined</div>
      <button id="update-btn">Update</button>
    </div>

    <div class="product-container">
      <div class="container-product-image">
        <h2>Product Image :</h2>
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
      </div>
    </div>


    <div class="buttons">
      <button>Continue Shopping</button>
    </div>
    <div class="breaker"></div>
    <div class="footer">
      <div class="company-name">
        <p>E-commerce Website</p>
        <div>
          <p class="description">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam
            alias optio ipsam harum, ipsum, iste architecto fugit temporibus ut
            ea suscipit sunt. Saepe?Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Cumque, dolor soluta ipsum ab eveniet dolorum
            blanditiis maxime eos quas eum earum magni similique. Reprehenderit
            sint .
          </p>
        </div>
      </div>
      <div class="options">
        <b>COMPANY</b>
        <a href="">Home</a>
        <a href="">About us</a>
        <a href="">Delivery</a>
        <a href="">Privacy policy</a>
      </div>
      <div class="contact-details">
        <b>GET IN TOUCH</b>
        <p><b>Team members</b></p>
        <a href="https://github.com/arco02">Arco Das</a>
        <a href="https://github.com/BaibhabKarmakar">Baibhab Karmakar</a>
        <a href="">Sonu Singh Patar</a>
        <a href="https://github.com/Swarnotaj003">Swarnotaj Kundu</a>
        <a href="https://github.com/TARIFUDDIN">Syed Tarifuddin ahmed</a>
      </div>
    </div>
    <div class="copyrights">
      <div class="breaker2"></div>
      <div>Copyright 2024 © com.example.dev - All Right Reserved.</div>
    </div>

    <script src="../../js/home.js"></script>
  </body>
</html>
