<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Friend</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<style>
.container {
        width: 400px; /* Set a smaller width */
        margin: 20px auto; /* Center the container */
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .friend-list {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .friend-card {
        display: flex;
        align-items: center;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background-color: #fff;
    }

    .friend-card img {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        margin-right: 10px;
    }

    .name {
        font-weight: bold;
    }

    .status {
        margin-left: auto;
        padding: 5px 10px;
        border-radius: 5px;
        font-size: 12px;
        text-transform: capitalize;
    }

    .status.online {
        background-color: #d4edda;
        color: #155724;
    }

    .status.offline {
        background-color: #f8d7da;
        color: #721c24;
    }
</style>
</head>
<body>

	<%@ include file="ownProfile.jsp" %>
	<div class="container">
        <h1>Your Friend List</h1>

        <c:if test="${not empty userList}">
            <div class="friend-list">
                <!-- Iterate over the list of users -->
                <c:forEach var="user" items="${userList}">
                    <div class="friend-card">
                        <!-- Display user name, status, and photo -->
                        <img src="${user.imagePath}" alt="Profile Photo">
                        <div class="name">${user.firstName} ${user.lastName}</div>
                        <div class="status ${user.status}">${user.status}</div>
                    </div>
                </c:forEach>
            </div>
        </c:if>
        </div>

        <c:if test="${empty userList}">
            <p class="no-friends">You have no friends yet. Start adding some!</p>
        </c:if>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>