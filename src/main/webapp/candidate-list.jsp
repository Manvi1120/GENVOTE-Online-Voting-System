<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Voting Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/candidateList.css">
    <script>
        function confirmDelete(candidateVotes, totalVotes) {
            var halfVotes = totalVotes / 2;
            if (candidateVotes > halfVotes) {
                alert("Cannot delete this candidate because they have received more than half of the total votes.");
                return false; // Prevent the deletion action
            }
            return confirm("Are you sure you want to delete this Candidate?");
        }
    </script>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #003366">
        <a href="<%=request.getContextPath()%>/list" class="navbar-brand" id="name"> GenVote</a>
        <div class="ml-auto">
            <a href="<%=request.getContextPath()%>/logout.jsp" class="btn btn-outline-light">Logout</a>
        </div>
    </nav>
</header>
<br>

<div class="container">
    <h3 class="text-center">List of Candidates</h3>
    <hr>
     <div class="text-right mb-3">
        <h5>Total Votes: <span class="badge badge-info"><c:out value="${totalVotes}" /></span></h5>
    </div>
    <div class="text-left">
        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Candidate</a>
    </div>
    <br>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>S.No</th>
                <th>Name of Candidate</th>
                <th>Party Name</th>
                <th>Party Logo</th>
                <th>Votes</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
         <c:set var="totalVotes" value="${totalVotes}" />
         
            <c:forEach var="candidate" items="${listCandidate}" varStatus="status">
                <tr>
                    <td><c:out value="${status.index + 1}" /></td> 
                    <td><c:out value="${candidate.fullName}" /></td>
                    <td><c:out value="${candidate.partyName}" /></td>
                    <td>
                        <c:if test="${not empty candidate.partyLogo}">
                            <img src="${candidate.partyLogo}" alt="Party Logo" class="img-thumbnail">
                        </c:if>
                    </td>
                    <td><c:out value="${candidate.votes}" /></td>
                    <td>
                        <a href="edit?id=<c:out value='${candidate.id}' />">
                            <img src="https://cdn.create.vista.com/api/media/small/259494592/stock-photo-illustration-edit-profile-icon" alt="Edit" class="action-btn">
                        </a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="delete?id=<c:out value='${candidate.id}' />"
                        onclick="return confirmDelete(${candidate.votes}, ${totalVotes});">
                            <img src="https://img.freepik.com/premium-vector/delete-icon-red-button-trash-can-symbol-illustration_692379-615.jpg" alt="Delete" class="action-btn2">
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<footer class="footer">
    <p>&copy; 2024 GenVote. All rights reserved.</p>
</footer>

</body>
</html>
