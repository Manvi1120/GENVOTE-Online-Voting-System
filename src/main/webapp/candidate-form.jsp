<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Voting Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/candidateform.css">
    <script>
        function validateForm(event) {
            var dob = document.getElementsByName("dateOfBirth")[0].value;
            if (!dob) {
                alert("Date of Birth is required.");
                event.preventDefault();
                return;
            }

            var today = new Date();
            var birthDate = new Date(dob);
            var age = today.getFullYear() - birthDate.getFullYear();
            var month = today.getMonth() - birthDate.getMonth();

            if (month < 0 || (month === 0 && today.getDate() < birthDate.getDate())) {
                age--;
            }

            if (age < 35) {
                alert("Candidate must be at least 35 years old.");
                event.preventDefault();
            }
        }
    </script>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark">
        <a href="<%=request.getContextPath()%>/list" class="navbar-brand" id="name">GenVote</a>
        <div class="navbar-nav ml-auto">
            <a href="<%=request.getContextPath()%>/list"  class="btn btn-outline-light">Candidate List</a>
        </div>
    </nav>
</header>

<div class="container col-md-6">
    <div class="card">
        <div class="card-body">
            <c:if test="${candidate != null}">
                <form action="${pageContext.request.contextPath}/update" method="post" onsubmit="return validateForm(event);">
            </c:if>
            <c:if test="${candidate == null}">
                <form action="${pageContext.request.contextPath}/insert" method="post" onsubmit="return validateForm(event);">
            </c:if>

            <h2>
                <c:if test="${candidate != null}">
                    Edit Candidate
                </c:if>
                <c:if test="${candidate == null}">
                    Add New Candidate
                </c:if>
            </h2>

            <c:if test="${candidate != null}">
                <input type="hidden" name="id" value="${candidate.id}" />
            </c:if>

            <fieldset class="form-group">
                <label>Full Name</label>
                <input type="text" value="${candidate.fullName}" class="form-control" name="fullName" required="required">
            </fieldset>

            <fieldset class="form-group">
                <label>Date Of Birth</label>
                   <c:choose>
                      <c:when test="${candidate != null}">
                        <input type="date" value="${candidate.dateOfBirth}" class="form-control" name="dateOfBirth" disabled />
                        <input type="hidden" name="dateOfBirth" value="${candidate.dateOfBirth}" />
                      </c:when>
                   <c:otherwise>
                      <input type="date" class="form-control" name="dateOfBirth" required="required" />
                   </c:otherwise>
                 </c:choose>
           </fieldset>


            <fieldset class="form-group">
                <label>Nationality</label>
                <select class="form-control" name="nationality">
                    <option value="Indian" <c:if test="${candidate != null && candidate.nationality == 'Indian'}">selected</c:if>>Indian</option>
                </select>
            </fieldset>

            <fieldset class="form-group">
                <label>Party Name</label>
                <input type="text" value="${candidate.partyName}" class="form-control" name="partyName">
            </fieldset>

            <fieldset class="form-group">
                <label>Party Logo URL</label>
                <select id="partyLogoUrlSelect" class="form-control" name="partyLogoUrl" onchange="toggleCustomUrlField()">
                    <option value="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp3CB2n6kTQqRE40UrQBYdxS18gnajNXqbWA&s"
                        <c:if test="${candidate != null && candidate.partyLogo == 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp3CB2n6kTQqRE40UrQBYdxS18gnajNXqbWA&s'}">selected</c:if>>
                        BhartiyaJantaParty.jpg
                    </option>
                    <option value="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0hgqhBPav_A0Vx1HD9htlZwfofhcKY4qlGQ&s"
                        <c:if test="${candidate != null && candidate.partyLogo == 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0hgqhBPav_A0Vx1HD9htlZwfofhcKY4qlGQ&s'}">selected</c:if>>
                        Congress.jpg
                    </option>
                    <option value="https://m.media-amazon.com/images/I/51YCqhDhqIS.jpg"
                        <c:if test="${candidate != null && candidate.partyLogo == 'https://m.media-amazon.com/images/I/51YCqhDhqIS.jpg'}">selected</c:if>>
                        AamAadmiParty.jpg
                    </option>
                    <option value="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2lZecQIw7_LjoUXUVT-LGu2zOSreabJPdTbjksRRyvFdez5pZC2mgMlySkfKRTQNj-5U&usqp=CAU"
                        <c:if test="${candidate != null && candidate.partyLogo == 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2lZecQIw7_LjoUXUVT-LGu2zOSreabJPdTbjksRRyvFdez5pZC2mgMlySkfKRTQNj-5U&usqp=CAU'}">selected</c:if>>
                        BahujanSamajParty.jpg
                    </option>
                    <option value="https://www.shutterstock.com/image-vector/hammer-sickle-high-quality-vector-600nw-1899842053.jpg"
                       <c:if test="${candidate != null && candidate.partyLogo == 'https://www.shutterstock.com/image-vector/hammer-sickle-high-quality-vector-600nw-1899842053.jpg'}">selected</c:if>>
                        CPI.jpg
                    </option>
                    <option value="https://resize.indiatvnews.com/en/resize/newbucket/360_-/2019/04/fzkgvacg-400x400-1554600394.jpg"
                       <c:if test="${candidate != null && candidate.partyLogo == 'https://resize.indiatvnews.com/en/resize/newbucket/360_-/2019/04/fzkgvacg-400x400-1554600394.jpg'}">selected</c:if>>
                        NPP.jpg
                    </option>
                    <option value="https://th.bing.com/th/id/OIP.mVllmeNeMhg1WYQDtzU0NgAAAA?rs=1&pid=ImgDetMain"
                       <c:if test="${candidate != null && candidate.partyLogo == 'https://th.bing.com/th/id/OIP.mVllmeNeMhg1WYQDtzU0NgAAAA?rs=1&pid=ImgDetMain'}">selected</c:if>>
                        SamajVadiParty.jpg
                    </option>
                    <option value="https://m.media-amazon.com/images/I/51oYCKLXgbS.jpg"
                       <c:if test="${candidate != null && candidate.partyLogo == 'https://m.media-amazon.com/images/I/51oYCKLXgbS.jpg'}">selected</c:if>>
                        NCP.jpg
                    </option>
                    <option value="Other" <c:if test="${candidate != null && candidate.partyLogo == 'Other'}">selected</c:if>>Other</option>
                </select>
                <input type="text" id="customPartyLogoUrl" class="form-control" name="partyLogoUrl" placeholder="Enter custom logo URL" style="display: none; margin-top: 10px;">
            </fieldset>

            <button type="submit" class="btn btn-success btn-block">Save</button>
            </form>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2024 GenVote. All rights reserved.</p>
    <p>
        <a href="<%=request.getContextPath()%>/about.jsp">About Us</a> | 
        <a href="<%=request.getContextPath()%>/contact.jsp">Contact</a>
    </p>
</footer>

<script>
    function toggleCustomUrlField() {
        var select = document.getElementById('partyLogoUrlSelect');
        var customUrlField = document.getElementById('customPartyLogoUrl');
        if (select.value === 'Other') {
            customUrlField.style.display = 'block';
        } else {
            customUrlField.style.display = 'none';
        }
    }
</script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK3yC0K+6ztzGZ0gf0A4z2A4tI4zLzv86zA2PppG5KtnP+X"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UOaPBBZbCExI4StHkkZG2bE+I0EBhhwD46iQfzzj2nY2kF6RY1Fug2U8GY+T8sk" 
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-fnmOCn5Wf1T+ytkeWEwD8Ck1x/3keDoL9Wb4t16pa7FbKeaZK5X+X3r5b3iA4yzb"
        crossorigin="anonymous"></script>

</body>
</html>
