<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Voting Success</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/votingSuccess.css">
</head>
<body>

    
    <div class="container">
        <div class="candidate-details">
            <h1>Thank you for voting!</h1>
            <p>You have successfully voted for:</p>
            <p><strong>Candidate Name:</strong> ${candidate.fullName}</p>
            <p><strong>Party Name:</strong> ${candidate.partyName}</p>
            <p><strong>Party Logo:</strong><br><img src="${candidate.partyLogo}" alt="${candidate.partyName} Logo"></p>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
</body>
</html>
