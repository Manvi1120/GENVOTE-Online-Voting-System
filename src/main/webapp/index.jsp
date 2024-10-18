<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GEN&#10004;OTE - Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/index.css">
</head>
<body>
    <section class="background-section">
        <header>
            <div class="website-name">GEN&#10004;OTE</div>
            <div class="nav-links">
                <a href="about.jsp">About</a>
                <a href="contact.jsp">Contact</a>
                <a href="voter_login.jsp">Voter</a>
                <a href="login.jsp">Admin</a>
            </div>
        </header>

        <div class="vote-message">
            <div class="big-text">Take Charge of <br>Your Vote</div>
            <div class="small-text">
                In the voting booth, we are all equal.<br>
                Every election is determined by the people who show up!
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features-section">
        <h2>Features of GenVote</h2>
        <div class="features">
            <div class="feature">
                <span class="material-symbols-outlined feature-icon">settings</span>
                <div class="feature-title">Admin Dashboard</div>
                <div class="feature-description">This feature allows admins to log in, manage candidates, view vote counts, and modify candidate information.</div>
            </div>
            <div class="feature">
                <span class="material-symbols-outlined feature-icon">assignment_ind</span>
                <div class="feature-title">Voter Registration</div>
                <div class="feature-description">Register new voters, verify their age and nationality, and ensure unique voter identification.</div>
            </div>
            <div class="feature">
                <span class="material-symbols-outlined feature-icon">ballot</span>
                <div class="feature-title">Voting Page</div>
                <div class="feature-description">A secure, user-friendly interface for voters to log in and cast their votes for candidates.</div>
            </div>
            <div class="feature">
                <span class="material-symbols-outlined feature-icon">bar_chart</span>
                <div class="feature-title">Real-Time Vote Count</div>
                <div class="feature-description">Visual overview of ongoing vote tallies, accessible to admins.</div>
            </div>
        </div>
    </section>
    
    <div class="slider">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://bsmedia.business-standard.com/_media/bs/img/article/2024-04/03/full/1712142018-5993.jpg" class="d-block w-100" alt="Voting System Overview">
                </div>
                <div class="carousel-item">
                    <img src="https://www.india.gov.in/sites/upload_files/npi/files/spotlights/election-nov13-new.jpg" class="d-block w-100" alt="Secure Voting Process">
                </div>
                <div class="carousel-item">
                    <img src="https://www.coe.int/documents/14181903/15917751/logo-vote-2022.jpg/532b2399-6926-9fca-a87d-fd2d59f1ccb7?t=1654684762000" class="d-block w-100" alt="User-Friendly Interface">
                </div>
                <div class="carousel-item">
                    <img src="https://elections24.eci.gov.in/img/main-banner-06.jpg" class="d-block w-100" alt="User-Friendly Interface">
                </div>
                <div class="carousel-item">
                    <img src="https://ida-evoting.krishimegh.in/Office-master/assets/img/slider/slide4.jpg" class="d-block w-100" alt="User-Friendly Interface">
                </div>
                <div class="carousel-item">
                    <img src="https://www.livelaw.in/h-upload/2023/08/10/750x450_485529-selection-for-election-commissioners-centre-to-drop-chief-justice-of-india-from-selection-panel.webp" class="d-block w-100" alt="User-Friendly Interface">
                </div>
                <div class="carousel-item">
                    <img src="https://ida-evoting.krishimegh.in/Office-master/assets/img/slider/slide2.jpg" class="d-block w-100" alt="User-Friendly Interface">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <footer>
        <div class="footer-container">
            <div class="footer-category">
                <h4>About</h4><br>
                <a href="about.jsp">Team</a>
                <a href="contact.jsp">Contact</a>
            </div>
            <div class="footer-category">
                <h4>Features</h4><br>
                <a href="login.jsp">Admin Dashboard</a>
                <a href="register.jsp">Voter Registration</a>
                <a href="voter_login.jsp">Secure Voting</a>
                <a href="login.jsp">Real-Time Vote Count</a>
            </div>
            <div class="footer-category">
                <h4>Vote Now</h4><br>
                <a href="voter_login.jsp">Login</a>
                <a href="register.jsp">Register</a>
            </div>
            <div class="footer-category">
                <h4>Resources</h4><br>
                <a href="onlineVotingSystem.jsp">Online Voting System</a>
                <a href="typesOfElection.jsp">Types Of elections</a>
                <a href="howToVote.jsp">How to Vote</a>
                <a href="AdminRole.jsp">Role of Admin</a>
            </div>
        </div>
        <p class="new">&copy; 2024 GenVote. All Rights Reserved.</p>
       
    </footer>
   

    <script src="js/index.js">
        
    </script>
    
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
