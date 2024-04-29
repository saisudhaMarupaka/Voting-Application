
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voting Application</title>
<style>
li{
float: left;
}
ul{
padding: 10px;
background: black;
margin: 0;
padding: 0;
overflow:hidden;
list-style-type: none;
}
li a{
display:block;
text-decoration: none;
color: white;
padding:15px 15px;
font-size: 20px;
}
.vote{
border: 2px solid green;
text-align: center;
}
.active{
background-color: green;
}
</style>
</head>
<body>
<ul>
<li><a class="active" href="">Home</a></li>
<li><a href="VoterRegistration.jsp">New Voter Registration</a></li>
<li><a href="SignIn.jsp">Voter SignIn</a></li>
<li><a href="AdminSignIn.jsp">Admin SingIn</a></li>
<li><a href="">About</a></li>
</ul>
<br>
<div class="vote"><h1>Voting Application</h1></div>
</body>
</html>