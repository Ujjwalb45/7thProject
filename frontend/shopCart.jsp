<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 800px;
            margin-top: 50px;
        }
        .cart-card {
            padding: 15px;
            margin-bottom: 10px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .cart-card h5 {
            margin: 0;
        }
        .cart-card p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
<%@ include file="shopHeader.jsp" %>

<div class="container">
    <h2 class="text-center mb-4">Your Shopping Cart</h2>

    <%
        HttpSession sessionObj = request.getSession();
        List<String> cart = (List<String>) sessionObj.getAttribute("cart");
    %>

    <% if (cart != null && !cart.isEmpty()) { %>
        <div class="cart-items">
            <% for (String item : cart) { %>
                <div class="cart-card d-flex justify-content-between align-items-center">
                    <h5><%= item %></h5>
                    <form action="RemoveFromCartServlet" method="post">
                        <input type="hidden" name="item" value="<%= item %>">
                        <button type="submit" class="btn btn-danger btn-sm">Remove</button>
                    </form>
                </div>
            <% } %>
        </div>
        
        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-primary">Continue Shopping</a>
            <a href="checkout.jsp" class="btn btn-success">Proceed to Checkout</a>
        </div>

    <% } else { %>
        <div class="alert alert-warning text-center">
            <p>Your cart is empty.</p>
            <a href="index.jsp" class="btn btn-primary">Shop Now</a>
        </div>
    <% } %>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
