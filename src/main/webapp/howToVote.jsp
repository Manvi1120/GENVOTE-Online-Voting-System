<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>How to Vote</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="CSS/howToVote.css">
</head>
<body>

<header>
    <h1 style="color:white">GenVote</h1>
    <a href="voter_login.jsp">Vote now</a>
</header>

<main>
    <h1>How to Vote</h1>

    <div class="how-to-vote">
        <div class="point">
            <div class="point-title">1. Go to the Voter button on the top right corner.</div>
            <img src="${pageContext.request.contextPath}/images/voting1.png" alt="Step 1">
        </div>
        <div class="point">
            <div class="point-title">2. If registered already, login with your unique voter ID and password which is generated after successful one time registration.</div>
            <img src="${pageContext.request.contextPath}/images/voting2.png" alt="Step 2">
        </div>
        <div class="point">
            <div class="point-title">3. If not registered, click on register and get registered with your credentials.</div>
            <img src="${pageContext.request.contextPath}/images/voting3.png" alt="Step 3">
        </div>
         <div class="point">
            <div class="point-title">4. Now you will be redirected to the registration success page where you will get your unique voter Id. Keep it safe as it will be required for logging in.</div>
            <img src="${pageContext.request.contextPath}/images/voting8.png" alt="Step 4">
        </div>
        <div class="point">
            <div class="point-title">5. After logging in, you will be redirected to the voter page where a list of candidates and their parties will be visible. You can cast your vote for any one of the candidates.</div>
            <img src="${pageContext.request.contextPath}/images/voting4.png" alt="Step 5">
        </div>
        <div class="point">
            <div class="point-title">6. On clicking on vote the voter would be asked are you sure you ant to vote if yes then successful voting will happen, otherwise he/she will remain on the page.</div>
            <img src="${pageContext.request.contextPath}/images/voting5.png" alt="Step 6">
        </div>
        <div class="point">
            <div class="point-title">7. After successful voting, you can see this page displaying the candidate details that you voted for.</div>
            <img src="${pageContext.request.contextPath}/images/voting6.png" alt="Step 7">
        </div>
        <div class="point">
            <div class="point-title">8. Once a voter has voted, they cannot vote again. If they try to log in again, they will not be allowed to vote and can see similar page after log in.</div>
            <img src="${pageContext.request.contextPath}/images/voting7.png" alt="Step 8">
        </div>
    </div>
</main>

<footer>
    <p>&copy; 2024 GenVote. All Rights Reserved.</p>
</footer>

</body>
</html>
