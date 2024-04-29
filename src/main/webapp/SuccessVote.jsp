<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vote Successful</title>
<<style>
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
.active{
background-color: green;
}
.user{
border: 2px solid green;
height: auto;
overflow: hidden;
}
td{
padding: 10px;
border: 1px solid black;
}
table{
border: 1px solid black;
}
form{
display: block;
float: left;
padding-left:400px;
margin-top: 20px;
margin: 10px;
}
img{
width:100px;
height:100px;
background-size: 100%;
}
</style>
<body>
<ul>
<li><a class="active" href="">Home</a></li>
<li><a href="">Welcome</a></li>
<li><a href="">Logout</a></li>
</ul>
<div class="user">
<center><h1>User Dashboard</h1></center>
<form action="">
<h2>User Details:</h2>
<img src="user.png" alt="user" style="width: 100px;height: 100px;">
<table>
<tr>
<td>Id:</td>
<td><% %></td>
</tr>
<tr>
<td>Name:</td>
<td><% %></td>
<tr>
<tr>
<td>Email Id:</td>
<td><% %></td>
<tr>
<tr>
<td>Phone No:</td>
<td><% %></td>
<tr>
<tr>
<td>Status:</td>
<td><% %></td>
<tr>
</table>
</form>
<form>
<h3><% %></h3>
<h4>Do Voting</h4>
<input type="radio" name="choose"><label>Candidate 1</label><br><br>
<input type="radio" name="choose"><label>Candidate 2</label><br><br>
<input type="radio" name="choose"><label>Candidate 3</label><br><br>
<input type="radio" name="choose"><label>Candidate 4</label><br><br>
<br>
<input type="submit" value="Vote">
</form>
</div>
</body>
</html>