<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Product Catalogue</title>
	<link rel="stylesheet" href="../../css/colorScheme.css"/>
	<link rel="stylesheet" href="../../css/manageCustomers.css"/>
</head>
<body>
	<%@ include file="../../templates/admin_sidebar.jsp" %>
    <div style="margin-left : 300px; margin-right : 100px;">
    	<%@ include file="../../templates/admin_header.jsp" %>
        <h2 style="font-size : 40px;">Manage Customers</h2>
    <table>
        <thead>
            <tr>
                <th>Customer-ID</th>
                <th>Customer-name</th>
                <th>Customer-email</th>                
                <th>Address</th>
                <th>Phone Number</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        		<% 
	                for (int i = 1; i <= 20; i++) { 
	            %>
            <tr>
                <td><h4><%= 100000 + i %></h4></td>
                <td>
	                <div class="name">
	                	<img src="../../images/product/tshirt.jpg" alt="">
	                    <h4>Baibhab Karmakar</h4>
	                </div>
                </td>
                <td><h4>baibhabkarmakar29@gmail.com</h4></td>
                <td><h4>Kharar , West Bengal</h4></td>
                <td>
                    <h4>+91 7603037074</h4>
                </td>               
                <td>
                    <div class="buttons">
                        <button class="delete">Delete</button>
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

