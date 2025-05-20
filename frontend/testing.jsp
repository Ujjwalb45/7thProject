<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Messaging</title>
    <link rel="icon" href="images/icon1.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
        }
        .message-container {
            max-width: 600px;
            margin: 30px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }
        .message-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 15px;
        }
        .message-input {
            position: relative;
            margin-top: 20px;
        }
        .message-input textarea {
            border-radius: 20px;
            height: 60px;
            resize: none;
            padding: 10px;
        }
        .message-input button {
            position: absolute;
            right: 0;
            top: 0;
            border-radius: 20px;
            padding: 10px 20px;
        }
        .message {
            margin-bottom: 10px;
            padding: 10px 15px;
            border-radius: 20px;
            color: #fff;
            max-width: 75%;
        }
        .message.sent {
            background-color: #007bff;
            align-self: flex-end;
        }
        .message.received {
            background-color: #6c757d;
            align-self: flex-start;
        }
        #chat {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-bottom: 20px;
            max-height: 300px;
            overflow-y: auto;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="message-container">
        <div class="message-header">
            <h2>${name }</h2>
            <a href="afterSignup.jsp" class="btn btn-outline-secondary">Back</a>
        </div>
        <div id="chat">
            <!-- Messages will appear here -->
        </div>
        <div class="message-input">
            <textarea id="messageText" class="form-control" placeholder="Type your message..." aria-label="Message"></textarea>
            <button id="sendMessage" class="btn btn-primary">Send</button>
        </div>
    </div>

    <script>
        document.getElementById('sendMessage').addEventListener('click', function() {
            const messageText = document.getElementById('messageText').value;
            if (messageText) {
                const chat = document.getElementById('chat');
                const messageElement = document.createElement('div');
                messageElement.classList.add('message', 'sent');
                messageElement.textContent = messageText;
                chat.appendChild(messageElement);
                document.getElementById('messageText').value = ''; // Clear input
                chat.scrollTop = chat.scrollHeight; // Scroll to the bottom
            }
        });

        // For demonstration, simulating received messages
        //setInterval(() => {
        //    const chat = document.getElementById('chat');
        //    const receivedMessage = document.createElement('div');
            //receivedMessage.classList.add('message', 'received');
            //receivedMessage.textContent = "This is a simulated received message!";
           // chat.appendChild(receivedMessage);
           // chat.scrollTop = chat.scrollHeight; // Scroll to the bottom
      //  }, 5000);
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>