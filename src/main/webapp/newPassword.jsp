<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>New Password</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
    body {
        background-image: url('https://st4.depositphotos.com/7335562/22652/i/450/depositphotos_226520656-stock-photo-snow-texture-blue-tone-snowy.jpg');
        background-size: cover; 
        background-position: center; 
    }
    .placeicon { font-family: fontawesome; }
    .custom-control-label::before { background-color: #dee2e6; border: #dee2e6; }
</style>
</head>
<body class='snippet-body'>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
                <div class="container bg-white rounded mt-2 mb-2 px-0">
                    <div class="row justify-content-center align-items-center pt-3">
                        <h1><strong>Reset Password</strong></h1>
                    </div>
                    <div class="pt-3 pb-3">
                        <form class="form-horizontal" action="<%= request.getContextPath() %>/newPassword" method="POST">
                            <!-- Password Input -->
                            <div class="form-group row justify-content-center px-3">
                                <div class="col-9 px-0">
                                    <input type="password" name="password" placeholder="&#xf084; &nbsp; New Password" class="form-control border-info placeicon" required>
                                </div>
                            </div>
                            <!-- Confirm Password Input -->
                            <div class="form-group row justify-content-center px-3">
                                <div class="col-9 px-0">
                                    <input type="password" name="confPassword" placeholder="&#xf084; &nbsp; Confirm New Password" class="form-control border-info placeicon" required>
                                </div>
                            </div>
                            <!-- Submit Button -->
                            <div class="form-group row justify-content-center">
                                <div class="col-3 px-3 mt-3">
                                    <input type="submit" value="Reset" class="btn btn-block btn-info">
                                </div>
                            </div>
                        </form>

                        <!-- Status Messages -->
                        <div class="pt-3">
                            <%
                                String status = (String) request.getAttribute("status");
                                if ("resetSuccess".equals(status)) {
                            %>
                                <div class="alert alert-success">Password reset successfully.</div>
                            <%
                                } else if ("resetFailed".equals(status)) {
                            %>
                                <div class="alert alert-danger">Failed to reset password.</div>
                            <%
                                } else if ("passwordMismatch".equals(status)) {
                            %>
                                <div class="alert alert-danger">Passwords do not match!</div>
                            <%
                                } else if ("emailNotFound".equals(status)) {
                            %>
                                <div class="alert alert-danger">Email not found in session. Please try again.</div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
</body>
</html>
