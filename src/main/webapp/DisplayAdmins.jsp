<%@page import="com.jsp.vote.entity.Admin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Admins</title>
</head>
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
</style>
<body>
<ul>
<li><a class="active" href="">Home</a></li>
<li><a href="">Welcome </a></li>
<li><a href="viewAllAdmins">View Admins</a></li>
<li><a href="viewAllVoters">View Voters</a></li>
<li><a href="viewAllCandidates">View Candidate</a></li>
<li><a href="Home.jsp">Logout</a></li>
</ul>
<br>
<div class="admin">
<center>
<h1><u>All Admin Details</u></h1>
<br>
<%
List<Admin> aList=(List)request.getAttribute("allAdmins");
%>
<table border="2">
<tr>
<th>EMAIL</th>
<th>MOBILE</th>
<th>PASSWORD</th>
<th>USERNAME</th>
</tr>
<%
for(Admin add:aList)
{	
%>
<tr>
<td><%= add.getEmail() %></td>
<td><%= add.getMobile() %></td>
<td><%= add.getPassword() %></td>
<td><%= add.getUsername() %></td>
</tr>
<%
}
%>
</table>
<br>
<br>
</center>
</div>
</body>
</html>