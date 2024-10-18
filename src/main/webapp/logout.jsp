<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Logout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }

        h2 {
            color: #004080;
        }

        .message {
            font-size: 18px;
            color: #333;
        }

        .redirect {
            font-size: 16px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <%
        // Get the current session if it exists, otherwise return null
        javax.servlet.http.HttpSession currentSession = request.getSession(false);
        if (currentSession != null) {
            currentSession.invalidate(); // Invalidate the session
        }
    %>

    <h2>You have been logged out.</h2>
    <p class="message">Thank you for using our application. You will be redirected to the home page shortly.</p>

    <script>
        // Redirect to the home page after a short delay
        setTimeout(function() {
            window.location.href = '<%= request.getContextPath() %>/index.jsp';
        }, 2000); // Redirect after 2 seconds
    </script>
</body>
</html>
