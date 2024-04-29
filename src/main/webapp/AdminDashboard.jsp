<%@page import="com.jsp.vote.entity.Admin"%>
<%@page import="com.jsp.vote.entity.Candidate"%>
<%@page import="java.util.List"%>
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
.active{
background-color: green;
}
.admin{
border: 2px solid black;
overflow: hidden;
}
</style>
</head>
<body>
<%
Admin add=(Admin)request.getAttribute("admin");
%>
<ul>
<li><a class="active" href="">Home</a></li>
<li><a href="">Welcome: <%=add.getUsername() %> </a></li>
<li><a href="viewAllAdmins">View Admins</a></li>
<li><a href="viewAllVoters">View Voters</a></li>
<li><a href="viewAllCandidates">View Candidate</a></li>
<li><a href="">Logout</a></li>
</ul>
<br>
<div class="admin">
<center><div >
<h1><u>Admin Dashboard</u></h1>
<br>
<% 
List<Candidate> list=(List)request.getAttribute("listOfCand");
for(Candidate can:list)
{
%>
<h2> <%=can.getFirstname() %>&nbsp;&nbsp;&nbsp;: Total Votes=<%=can.getVotes() %></h2>
<%
}
%>

</div>
</center>
</div>
</body>
</html>