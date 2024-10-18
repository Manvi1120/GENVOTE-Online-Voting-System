<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://st4.depositphotos.com/7335562/22652/i/450/depositphotos_226520656-stock-photo-snow-texture-blue-tone-snowy.jpg');
            background-size:cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .registration-success-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            width: 500px;
            height: 600px; /* Increased height for better layout */
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Space out content evenly */
        }
        h2 {
            color: #4CAF50;
            margin-top: 10px; /* Added margin for spacing */
        }
        p {
            color: #555;
            margin: 10px 0;
        }
        .login-link {
            display: inline-block;
            margin-top: 20px; /* Increased margin for better spacing */
            padding: 10px 15px;
            background-color: #003366;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .login-link:hover {
            background-color: #002244; /* Darker shade on hover */
        }
        .image-container {
            margin-bottom: 15px;
        }
        .image-container img {
            width: 100%; 
            height: auto; 
            max-height: 300px; /* Increased maximum height for the image */
            border-radius: 5px; 
        }
    </style>
</head>
<body>
    <div class="registration-success-container">
        <div class="image-container">
            <img src="images/registrationSuccess.png" alt="Registration Success Image">
        </div>
        <h2>Registration Successful</h2>
        <p>Your Voter ID has been successfully generated.</p>
        <p><strong>Your Voter ID: <%= request.getAttribute("voterId") %></strong></p>
        <p>Please keep this Voter ID safe as you will need it to log in.</p>
        <a href="voter_login.jsp" class="login-link">Login</a>
    </div>
</body>
</html>