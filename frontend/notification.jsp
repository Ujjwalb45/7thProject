<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.nextstep.marriage.model.Notification"%>
<%@ page import="com.nexstep.marriage.implementation.*"%>

<%
int userId = (int) session.getAttribute("id");
NotificationImpl notificationImpl = new NotificationImpl();
List<Notification> notifications = notificationImpl.getNotifications(userId);
%>

<!DOCTYPE html>
<html>
<head>
<title>Notifications</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container mt-4">
		<h2 class="mb-4">Friend Request Notifications</h2>


		<!-- Check if there are notifications -->
		<div class="list-group">
			<%
			if (notifications.isEmpty()) {
			%>
			<div class="alert alert-info" role="alert">No new notifications
			</div>
			<%
			} else {
			%>
			<%
			for (Notification notification : notifications) {
			%>
			<div
				class="list-group-item d-flex align-items-center p-3 mb-2 border rounded">
				<!-- Sender's Image -->
			<%
				String wholePath = notification.getSenderImagePath();
				String realPath[]=wholePath.split("upload");
				%>
				<div class="mr-3">
					<img src="imaged/upload<%=realPath[1]%>"
						alt="Sender Image" class="rounded-circle"
						style="width: 50px; height: 50px; object-fit: cover;">
				</div>

				<!-- Notification Message -->
				<div class="flex-grow-1">
					<p class="mb-1">
						<strong><%=notification.getSenderName()%></strong> sent you a
						friend request.
					</p>
					<small class="text-muted"></small>
				</div>

				<!-- Action Buttons (Accept, Delete) -->
				<div class="ml-3">
					<form action="FriendRequestController" method="post"
						class="d-inline">
						<input type="hidden" name="requestId"
							value="<%=notification.getId()%>"> <input type="hidden"
							name="action" value="accept">
						<button type="submit" class="btn btn-outline-success btn-sm">Accept</button>
					</form>
					<form action="FriendRequestController" method="post"
						class="d-inline ml-2">
						<input type="hidden" name="requestId"
							value="<%=notification.getId()%>"> <input type="hidden"
							name="action" value="delete">
						<button type="submit" class="btn btn-outline-danger btn-sm">Delete</button>
					</form>
				</div>
			</div>
			<%
			}
			%>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>