<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    int userId = (int) session.getAttribute("id"); // Get user ID from session
    String userName = (String) session.getAttribute("username"); // Assuming the user's name is stored in session
    String recipient = request.getParameter("recipient"); // Get the recipient from the URL parameter
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Private Chat with <%= recipient %></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }
        #chat-container {
            width: 80%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #messages {
            height: 300px;
            overflow-y: auto;
            margin-bottom: 20px;
            padding-right: 10px;
            border-bottom: 1px solid #ddd;
        }
        .message {
            margin-bottom: 10px;
        }
        .sent {
            text-align: right;
            color: #4caf50;
        }
        .received {
            text-align: left;
            color: #007bff;
        }
        #message-box {
            display: flex;
            justify-content: space-between;
        }
        input[type="text"] {
            width: 70%;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            width: 20%;
            padding: 10px;
            border: none;
            background-color: #4caf50;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        let userId = "<%= userId %>";
        let userName = "<%= userName %>";
        let recipient = "<%= recipient %>";
        let socket = new WebSocket("ws://localhost:8080/yourApp/chat/" + userId);

        socket.onopen = function () {
            console.log("Connected as " + userId);
        };

        socket.onmessage = function (event) {
            let messageBox = document.getElementById("messages");
            let messageData = JSON.parse(event.data);
            if (messageData.recipient === recipient || messageData.senderId === userId) {
                let messageElement = document.createElement("div");
                messageElement.classList.add("message");
                if (messageData.senderId === userId) {
                    messageElement.classList.add("sent");
                } else {
                    messageElement.classList.add("received");
                }
                messageElement.innerHTML = `<strong>${messageData.senderName}:</strong> ${messageData.message} <small>${messageData.timestamp}</small>`;
                messageBox.appendChild(messageElement);
                messageBox.scrollTop = messageBox.scrollHeight;
            }
        };

        function sendMessage() {
            let message = document.getElementById("message").value;

            let messageData = {
                senderId: userId,
                senderName: userName,
                recipient: recipient,
                message: message,
                timestamp: new Date().toLocaleTimeString()
            };

            socket.send(JSON.stringify(messageData)); // Send private message to selected recipient

            document.getElementById("message").value = ""; // Clear input
        }
    </script>
</head>
<body>

    <div id="chat-container">
        <h2>Private Chat with <%= recipient %></h2>
        <div id="messages"></div>

        <div id="message-box">
            <input type="text" id="message" placeholder="Type a message...">
            <button onclick="sendMessage()">Send</button>
        </div>
    </div>

</body>
</html>
