<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Voting System</title>
<style>
 body {
   background-size: cover;
   animation: slider 10s linear infinite;
   color: white;
   font-family: Arial, sans-serif;
   padding: 20px;
}

@keyframes slider {
   0% { background-image: url(images/OnlineVotingSystem1.jpg); }
   30% { background-image: url(images/OnlineVotingSystem2.jpg); }
   60% { background-image: url(images/OnlineVotingSystem3.jfif); }
   100% { background-image: url(images/OnlineVotingSystem4.webp); }
}

h2:hover{
  color:blue;
}

h1{
  font-size:65px;
}

ul {
   list-style-type: disc; 
   padding-left: 20px; 
   font-size: 30px; 
}

li {
   opacity: 0;
   animation: fadeIn 1s forwards;
}

@keyframes fadeIn {
   from { opacity: 0; }
   to { opacity: 1; }
}

li:nth-child(1) { animation-delay: 1s; }
li:nth-child(2) { animation-delay: 3s; }
li:nth-child(3) { animation-delay: 5s; }
li:nth-child(4) { animation-delay: 7s; }
li:nth-child(5) { animation-delay: 9s; }
li:nth-child(6) { animation-delay: 11s; }
li:nth-child(7) { animation-delay: 13s; }


</style>
</head>
<body>
<h2>Gen&#10004;ote</h2>
<h1>What is an Online Voting System?</h1>
<ul>
   <li>An online voting system is a software platform that allows groups to securely conduct votes and elections.</li>
   <li>Allows voters to cast their votes via the internet.</li>
   <li>Allows admin to add candidates, parties, make updates and remove them.</li>
   <li>Increases accessibility for voters unable to reach polling places.</li>
   <li>Utilizes secure technology to ensure vote integrity.</li>
   <li>Facilitates faster vote counting and results reporting.</li>
   <li>Reduce the cost of paying staff to count votes manually.</li>
</ul>

</body>
</html>
