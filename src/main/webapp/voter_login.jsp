<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voter Login</title>
    <link rel="stylesheet" href="CSS/voterLogin.css">
</head>
<body>
    <div class="login-container">
        <img src="https://play-lh.googleusercontent.com/3APi4HdWb0_rhnhAEoyJEYfSemXW9cNbA2VdOCSN7L6wgdjC_oTxLphER647R9PnSCkV" alt="Logo" />
        <h2>Voter Login</h2>
        
        <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>

        <form action="<%= request.getContextPath() %>/VoterLoginServlet" method="post">
            <div class="form-group">
                <label for="voterid">Voter ID</label>
                <input type="text" id="voterid" name="voterId" placeholder="Enter your Voter ID" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your Password" required>
            </div>
            <button type="submit">Login</button>
            <p class="register-link">Not registered? <a href="register.jsp">Register here</a></p>
        </form>
    </div>
</body>
</html>
