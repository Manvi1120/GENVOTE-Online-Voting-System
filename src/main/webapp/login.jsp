<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="CSS/adminLogin.css">
</head>
<body>
<div class="login-container">
    <div class="login-header">
        <img src="https://t3.ftcdn.net/jpg/07/33/87/70/360_F_733877023_iLJRv5CWQU2ZnNQPoQ6g6J0o1RdMPKBf.jpg" alt="Logo" />
        <div class="login-title">Admin Login</div>
    </div>
    
    <!-- Check if there's an error message and display it -->
    <%
        String errorMessage = (String) session.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
        <div class="error-message"><%= errorMessage %></div>
    <%
        // Remove the error message from the session after displaying it
        session.removeAttribute("errorMessage");
        }
    %>
    
    <form class="login-form" action="<%= request.getContextPath() %>/LoginServlet" method="post">
        <input type="text" name="username" id="username" placeholder="Username" class="login-input" required />
        <input type="password" name="password" id="password" placeholder="Password" class="login-input" required />
        <input type="submit" value="Login" class="login-button" />
    </form>
    
    <div class="login-info">
        <a href="forgotPassword.jsp">Forgot Password?</a>
    </div>
</div>
</body>
</html>
