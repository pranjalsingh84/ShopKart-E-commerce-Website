<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>ShopKart | Update Profile</title>
    <link rel="stylesheet" href="../../css/updateinfo.css" />
  </head>
  <body>
    <%@ include file="../../templates/header.jsp" %>
    <div style="margin-top: 100px">
      <h1>Update your profile :</h1>
      <div class="container">
        <div class="grid">
          <div class="element">
            <h3>Your new name :</h3>
            <input type="text" placeholder="Your new name " required />
          </div>

          <div class="element">
            <h3>Your new phone number :</h3>
            <input type="text" placeholder="Your new phone number " required />
          </div>

          <div class="element">
            <h3>Your new address :</h3>
            <input type="text" placeholder="Your new address " required />
          </div>

          <div class="element">
            <h3>Your new password :</h3>
            <input type="text" placeholder="New Password " required />
          </div>
        </div>

        <div class="confirm-element">
          <h3>Type your old password to confirm :</h3>
          <input type="text" placeholder="old password " required />
        </div>
        <div class="buttons">
          <button class="save">Save Changes</button>
          <button class="go-back" onclick="window.location.href='/product'">Go back</button>
        </div>
      </div>
    </div>
    <%@ include file="../../templates/footer.jsp" %>
  </body>
</html>
