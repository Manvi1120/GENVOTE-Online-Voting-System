<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voter Registration</title>
    <link rel="stylesheet" href="CSS/register.css">
    <script>
    function validateForm() {
        const phone = document.getElementById("phone").value;
        const aadhar = document.getElementById("aadhar").value;
        const dob = document.getElementById("dob").value;
        const phonePattern = /^[789]\d{9}$/; // Indian phone number pattern
        const aadharPattern = /^\d{12}$/; // Aadhar must be 12 digits

        // Validate phone number
        if (!phonePattern.test(phone)) {
            alert("Please enter a valid Indian phone number (10 digits starting with 7, 8, or 9).");
            return false;
        }

        // Validate Aadhar number
        if (!aadharPattern.test(aadhar)) {
            alert("Aadhar number must be exactly 12 digits.");
            return false;
        }

        // Validate age (must be at least 18 years old)
        const birthDate = new Date(dob);
        const today = new Date();
        const age = today.getFullYear() - birthDate.getFullYear();
        const monthDifference = today.getMonth() - birthDate.getMonth();

        // Adjust age if the birthday hasn't occurred yet this year
        if (monthDifference < 0 || (monthDifference === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }

        if (age < 18) {
            alert("You must be at least 18 years old to register.");
            return false;
        }

        return true; // Submit form if validation passes
    }
</script>

</head>
<body>
    <div class="registration-container">
        <h2>Voter Registration</h2>
        <form action="<%= request.getContextPath() %>/RegisterServlet" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
            </div>
            <div class="form-group">
                <label for="aadhar">Aadhaar Number</label>
                <input type="text" id="aadhar" name="aadhar" placeholder="Enter your Aadhaar number" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Create a password" required>
            </div>
            <div class="form-group">
                <label for="nationality">Nationality</label>
                <select id="nationality" name="nationality" required>
                    <option value="Indian">Indian</option>
                </select>
            </div>
            <div class="form-group">
                <input type="submit" value="Register">
            </div>
        </form>
        <p class="login-link">Already registered? <a href="voter_login.jsp">Login here</a></p>
    </div>
</body>
</html>
