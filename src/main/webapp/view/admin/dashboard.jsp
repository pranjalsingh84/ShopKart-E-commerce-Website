<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.springspartans.shopkart.model.Admin" %>
<%@ page import="com.springspartans.shopkart.model.Customer" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopKart | Analytics Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colorScheme.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colorSchemeForOrderStatus.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css" />
</head>

<body>
    <%@ include file="../../templates/admin_sidebar.jsp" %>
    <div style="margin-left : 300px ; margin-right : 100px;">
        <%@ include file="../../templates/admin_header.jsp" %>
        <header>
            <h1>Analytics Dashboard</h1>
        </header>

        <%
            // Check if admin is logged in
            if (admin != null) {
        %>
        <!-- Summary Statistics -->
        <div class="card-summary-stats">
            <div class="card-name total-sales">
                <h2>Total Sales</h2>
                <h1>10,000</h1>
            </div>
            <div class="card-name product-count">
                <h2>Product Count</h2>
                <h1>20</h1>
            </div>
            <div class="card-name users-count">
                <h2>Customer Count</h2>
                <h1>5</h1>
            </div>
            <div class="card-name active-orders">
                <h2>Active Orders</h2>
                <h1>10</h1>
            </div>
        </div>

        <div class="card-container">
            <div class="card">
                <h2>Order Fulfillment Ratio</h2>
                <canvas id="order-fulfillment-chart" width="200" height="200"></canvas>
            </div>

            <!-- Lists -->
            <div class="card">
                <h2>Top Selling Products</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Stock sold</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        for (int i = 1; i <= 5; i++) {
                        %>
                        <tr>
                            <td>
                                <div class="name">
                                    <img src="../../images/product/tshirt.jpg">
                                    <h4>Baibhab's T-shirt</h4>
                                </div>
                            </td>
                            <td><p>20</p></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card-container">
            <!-- Line Graph -->
            <div class="card line-graph">
                <h2>Day by Day Sales (Last 7 Days)</h2>
                <canvas id="sales-line-chart" width="400" height="250"></canvas>
            </div>

            <!-- Bar Graph -->
            <div class=" card bar-graph">
                <h2>Customer Activity (Today)</h2>
                <canvas id="customer-activity-chart" width="150" height="150"></canvas>
            </div>
        </div>
        <%
            }
        %>

        <footer>
            <p>© 2024 Analytics Dashboard</p>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Example Data for Pie Chart
        const pieCtx = document.getElementById('order-fulfillment-chart').getContext('2d');
        new Chart(pieCtx, {
            type: 'pie',
            data: {
                labels: ['Delivered', 'Shipped', 'Pending', 'Cancelled'],
                datasets: [{
                    label: 'Order Fulfillment Ratio',
                    data: [40, 30, 20, 10], // Example data
                    backgroundColor: ['#568203', '#0047AB', '#FFBF00', '#B31B1B']
                }]
            }
        });

        // Example Data for Line Graph
        const lineCtx = document.getElementById('sales-line-chart').getContext('2d');
        new Chart(lineCtx, {
            type: 'line',
            data: {
                labels: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6', 'Day 7'], // Example labels
                datasets: [{
                    label: 'Sales',
                    data: [12, 34, 23, 56, 43, 120, 8], // Example data
                    borderColor: 'var(--low-text-button)',
                    backgroundColor: 'rgba(0, 123, 158, 0.5)',
                    fill: true
                }]
            }
        });

        // Example Data for Bar Graph
        const barCtx = document.getElementById('customer-activity-chart').getContext('2d');
        new Chart(barCtx, {
            type: 'bar',
            data: {
                labels: ['New Signups', 'Logins', 'Orders Placed'],
                datasets: [{
                    label: 'Customer Activity',
                    data: [20, 50, 15], // Example data
                    backgroundColor: ['#007B9E', '#6D6D6D', '#FF6C6C']
                }]
            }
        });
    </script>
</body>

</html>