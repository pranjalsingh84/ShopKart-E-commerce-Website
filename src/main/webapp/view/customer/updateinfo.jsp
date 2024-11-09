<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>ShopKart | Update Profile</title>
    <link rel="stylesheet" href="../../css/updateinfo.css" />
    <link rel="stylesheet" href="../../css/colorScheme.css" />
    <style>
      * {
		    margin : 0;
		    padding : 0;
		    font-family : system-ui;
		}
		body {
			background-color : var(--background);
		}
		h1 {
		    text-align : center;
		    margin : 50px 0px;
		    color : var(--base-text);
		}
		
		.container {
		    max-width : 60vw;
		    margin : 10px auto; 
		    display: flex;
		    flex-direction: column;
		    padding : 20px;
		    border-radius : 10px;
		    background : linear-gradient(135deg , var(--high-text-button) , var(--low-text-button));
		}
		.grid {
		    margin : 10px;
		    max-width : 100vw;
		    margin : 0px auto;
		    display : grid;
		    place-items : center;
		    grid-template-columns : repeat(2, 1fr);
		    gap : 20px;
		}
		.element {
		    display: flex;
		    flex-direction : column;
		    width: 29vw;
		    margin: 20px auto;
		    gap: 20px;
		    
		}
		.element h3 {
		    text-align : center;
		}
		.element input {
			align-self : center;
		    padding : 5px 10px;
		    border : none;
		    outline : none;
		    border-radius : 5px;
		    width : 180px;
		}
		.element input:focus {
		    border : none;
		    outline : none;
		    width : 210px;
		    transition : 0.5s ease;
		}
		.confirm-element {
		    margin-top : 20px;
		    display : flex;
		    flex-direction : column;
		    align-items : center;
		    justify-content : center;
		    gap : 20px;
		}
		.confirm-element input {
		    padding : 5px 10px;
		    border : none;
		    outline : none;
		    border-radius : 5px;
		    width : 180px;
		}
		.confirm-element input:focus {
		    border : none;
		    outline : none;
		    width : 210px;
		    transition : 0.5s ease;
		}
		.buttons {
		    display : flex;
		    margin : 30px auto;
		    gap : 20px;
		    justify-content: center;
		    
		}
		.save {
		    margin : 30px 0px;
		    background : var(--high-text-button);
		    width : 120px;
		    padding : 5px 10px;
		    border : none;
		    outline : none;
		    align-self : center;
		    border-radius : 5px;  
		    color : var(--base-text); 
		}
		.go-back {
		    margin : 30px 0px;
		    background-color : var(--low-text-button);
		    width : 120px;
		    padding : 5px 10px;
		    border : none;
		    outline : none;
		    align-self : center;
		    border-radius : 5px;
		    color : var(--base-text);   
		}
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
	      </div>
	      
	      <div class="buttons">
	          <button class="save">Save Changes</button>
	          <button class="go-back" onclick="window.location.href='/product'">Go back</button>
	      </div>
	    </div>
    </form>
    
    <%@ include file="../../templates/footer.jsp" %>
  </body>
</html>
