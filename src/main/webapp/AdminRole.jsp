<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Role</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
      body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9fbfe;
            margin: 0;
            padding: 0;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: rgb(27, 54, 79);
            color: white;
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }
        header h1 {
            margin: 0;
            font-size: 1.5em;
        }
        header a {
            color: white;
            text-decoration: none;
            font-size: 1.1em;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin-right: 20px; /* Added right margin */
        }
        header a:hover {
            background-color: #004080;
        }
        main {
            flex: 1;
            padding-top: 70px; /* Space for fixed header */
            padding-bottom: 20px; /* Space for footer */
            padding-left: 20px; /* Space for left alignment */
        }
        h1 {
            text-align: center;
            color: #004080;
        }
        .how-to-vote {
            max-width: 1000px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .point {
            margin-bottom: 40px;
            text-align: left; /* Align points to the left */
        }
        .point-title {
            font-size: 1.2em;
            margin-bottom: 10px;
        }
        .point img {
            width: 100%; /* Make images responsive */
            max-width: 996px; /* Maximum width */
            height: 500px; /* Fixed height for rectangular shape */
            object-fit: cover; /* Maintain aspect ratio */
            margin-top: 10px;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: rgb(27, 54, 79);
            color: white;
            width: 100%;
            position: relative;
            bottom: 0;
            margin-top: auto; /* Push footer to bottom */
            box-shadow: 0 -2px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<header>
    <h1 style="color:white">GenVote</h1>
    <a href="login.jsp">Login</a>
</header>

<main>
    <h1>Manage Candidates By Admin</h1>

    <div class="how-to-vote">
        <div class="point">
            <div class="point-title">1. Go to the Admin Link on the top right corner.</div>
            <img src="${pageContext.request.contextPath}/images/admin1.png" alt="Step 1">
        </div>
        <div class="point">
            <div class="point-title">2. The admins credentials are already provided to him/her. He/she can login with their username and password.</div>
            <img src="${pageContext.request.contextPath}/images/admin2.png" alt="Step 2">
        </div>
        <div class="point">
            <div class="point-title">3. The admin can see the list of candidates, their party name and logos along with the total votes.</div>
            <img src="${pageContext.request.contextPath}/images/admin3.png" alt="Step 3">
        </div>
         <div class="point">
            <div class="point-title">4. The admin can add a new Candidate by clicking on add new candidate button and will be on this page where candidate details will be added. After save button is clicked it will be redirected to List of Candidates page and added successfully.</div>
            <img src="${pageContext.request.contextPath}/images/admin4.png" alt="Step 4">
        </div>
        <div class="point">
            <div class="point-title">5. If you want to edit the details of candidate after clicking on the edit button in the actions you will be redirected to this page where only candidate name, party name and logo can be modified.</div>
            <img src="${pageContext.request.contextPath}/images/admin5.png" alt="Step 5">
        </div>
        <div class="point">
            <div class="point-title">6. If you want to delete the candidate you can click on the delete button. Only candidate having less than half of the total votes will be deleted otherwise you will get this message.</div>
            <img src="${pageContext.request.contextPath}/images/admin6.png" alt="Step 6">
        </div>
        <div class="point">
            <div class="point-title">7. Admin can logout from the page by clicking on the logout button on the top right corner.</div>
            <img src="${pageContext.request.contextPath}/images/admin7.png" alt="Step 7">
        </div>
        
    </div>
</main>

<footer>
    <p>&copy; 2024 GenVote. All Rights Reserved.</p>
</footer>

</body>
</html>
