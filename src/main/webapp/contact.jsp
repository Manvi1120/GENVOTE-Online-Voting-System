<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="CSS/contact.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script>
        function submitForm(event) {
            event.preventDefault(); // Prevent default form submission

            // Redirect to feedback_received.jsp
            window.location.href = 'feedback_received.jsp';
        }
    </script>
</head>
<body>
    
    <header>
        <h1 style="margin-left:30px">Gen&#10004;ote</h1>
        <nav>
            <a href="voter_login.jsp" class="login-link">Vote Now</a>
        </nav>
    </header>

    <div class="contact-container">
        <h2>Contact Us</h2>
        <form onsubmit="submitForm(event)"> <!-- Call submitForm function -->
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address" required>
            </div>
            <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" id="subject" name="subject" placeholder="Enter the subject" required>
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" placeholder="Enter your message" required></textarea>
            </div>
            <button type="submit">Send Message</button>
        </form>
    </div>

    <footer>
        &copy; 2024 GenVote. All rights reserved.
        <div class="social-icons">
            <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook-f"></i></a>
            <a href="https://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://www.linkedin.com" target="_blank"><i class="fab fa-linkedin-in"></i></a>
        </div>
    </footer>
</body>
</html>
