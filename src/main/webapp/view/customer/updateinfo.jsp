<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>ShopKart | Update Profile</title>
    <link rel="stylesheet" href="../../css/updateinfo.css" />
    <style>
    	#error-msg {
    		text-align : center;
    		color : red;
    		margin-bottom : 20px;
    	}
    </style>
  </head>
  <body>
    <%@ include file="../../templates/header.jsp" %>
    <form action="/update" method="post">
    	<div style="margin-top: 100px">
    	<% String msg = request.getParameter("msg"); %>
    	<% if (msg != null && msg.equals("failed")) { %>
    		<h3 id="error-msg">Wrong Password entered!</h3>
    	<% } %>
	      <h1>Update your profile :</h1>
	      <div class="container">
	        <div class="grid">
	          <div class="element">
	            <h3>Your new name :</h3>
	            <input type="text" name="newName" value="<%= customer.getName()%>" placeholder="Enter new name " required />
	          </div>
	
	          <div class="element">
	            <h3>Your new phone number :</h3>
	            <input type="tel" name="newPhone" pattern="[0-9]{10}" value="<%= customer.getPhone()%>" placeholder="Enter new phone number " required />
	          </div>
	
	          <div class="element">
	            <h3>Your new address :</h3>
	            <input type="text" name="newAddress" value="<%= customer.getAddress() %>" placeholder="Enter new address " required />
	          </div>
	
	          <div class="element">
	            <h3>Your new password :</h3>
	            <input type="password" name="newPassword" placeholder="Enter new Password " required />
	          </div>
	        </div>
	
	        <div class="confirm-element">
	          <h3>Type your old password to confirm :</h3>
	          <input type="password" name="oldPassword" placeholder="Enter old password " required />
	        </div>
	        <div class="buttons">
	          <button class="save">Save Changes</button>
	          <button class="go-back" onclick="window.location.href='/product'">Go back</button>
	        </div>
	      </div>
	    </div>
    </form>
    
    <%@ include file="../../templates/footer.jsp" %>
  </body>
</html>
