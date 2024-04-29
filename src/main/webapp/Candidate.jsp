<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate Vote Details</title>
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
.active{
background-color: green;
}
.admin{
border: 2px solid black;
overflow: hidden;
}
table{
border:2px solid black;
}
td{
border:1px solid lightblue;
}
th{
background-color: green;
color: white;
padding:10px;
}
td{
padding:10px;
text-align: center;
}
#head{
background-color: lightblue;
color: black;
}
</style>
</head>
<body>
<ul>
<li><a class="active" href="">Home</a></li>
<li><a href="">Welcome Admin</a></li>
<li><a href="">View Admins</a></li>
<li><a href="">View Voters</a></li>
<li><a href="">View Candidate</a></li>
<li><a href="">Logout</a></li>
</ul>
<br>
<center>
<h1>Candidate's Vote Details</h1>
<table>
<tr>
<th></th>
<th>Candidate 1 Votes</th>
<th>Candidate 2 Votes</th>
<th>Candidate 3 Votes</th>
<th>Candidate 4 Votes</th>
<th>Actions</th>
</tr>
<tr>
<th id="head">Voters</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td><img src="delete.png" alt="delete" style="width: 20px;height: 20px;"></td>
<tr>
<th id="head">Total Voters</th>
<td>0</td>
<td>1</td>
<td>0</td>
<td>0</td>
</table>
</center>
</body>
</html>