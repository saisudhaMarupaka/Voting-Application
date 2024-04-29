<%@page import="com.jsp.vote.entity.Voter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Voters</title>
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
<h1><u>All Voters Details</u></h1>
<br>
<%
List<Voter> vList=(List)request.getAttribute("allVoters");
%>
<table border="2">
<tr>
<th>EMAIL</th>
<th>AADHAR NO</th>
<th>ADDRESS</th>
<th>DOB</th>
<th>FIRST NAME</th>
<th>GENDER</th>
<th>LAST NAME</th>
<th>MOBILE NO</th>
<th>PAN NO</th>
<th>PASSWORD</th>
<th>USERNAME</th>
<th>ID</th>
<th>STATUS</th>
</tr>
<%
for(Voter vot:vList)
{	
%>
<tr>
<td><%=vot.getEmail() %></td>
<td><%=vot.getAadharno() %></td>
<td><%=vot.getAddress() %></td>
<td><%=vot.getDob() %></td>
<td><%=vot.getFirstname() %></td>
<td><%=vot.getGender() %></td>
<td><%=vot.getLastname() %></td>
<td><%=vot.getMobileno() %></td>
<td><%=vot.getPanno() %></td>
<td><%=vot.getPassword() %></td>
<td><%=vot.getUsername() %></td>
<td><%=vot.getId() %></td>
<td><%=vot.getStatus() %></td>
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