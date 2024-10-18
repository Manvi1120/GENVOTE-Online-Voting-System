<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Voter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Voter voter = (Voter) session.getAttribute("voter");
    if (voter == null) {
        response.sendRedirect("voter_login.jsp"); // Redirect to login if voter is not in session
    }
%>

<html>
<head>
    <title>Voter Dashboard</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/voterDashboard.css">
</head>
<body>
    <header>
        <h1 style="margin-left:30px">Gen&#10004;ote</h1>
        <nav>
            <a href="logout.jsp" class="logout-link">Logout</a>
        </nav>
    </header>

    <section class="welcome-section">
        <h2>Welcome, ${voter.name}!</h2>
    </section>

    <section class="candidate-section">
        <h2>Candidate List</h2>

        <table>
            <thead>
                <tr>
                    <th>Full Name</th>
                    <th>Party Name</th>
                    <th>Party Logo</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="candidate" items="${listCandidate}">
                    <tr>
                        <td>${candidate.fullName}</td>
                        <td>${candidate.partyName}</td>
                        <td>
                            <img src="${candidate.partyLogo}" alt="${candidate.partyName} Logo" width="50" height="50">
                        </td>
                        <td>
                            <form action="VoteServlet" method="post" onsubmit="return confirmVote();">
                                <input type="hidden" name="candidateId" value="${candidate.id}">
                                <button type="submit" class="vote-button">Vote</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </section>

    <footer>
        <p>&copy; 2024 Voting Management Application. All rights reserved.</p>
    </footer>

    <script>
        function confirmVote() {
            return confirm("Are you sure you want to vote?");
        }
    </script>
</body>
</html>
