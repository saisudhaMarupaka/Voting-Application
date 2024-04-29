<%@page import="java.util.List"%>
<%@page import="com.jsp.vote.entity.Candidate"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.jsp.vote.entity.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter</title>
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
.user{
border: 2px solid green;
height: auto;
overflow: hidden;
}
td{
padding: 10px;
border: 1px solid black;
text-align: center;
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
<%
Voter v=(Voter)request.getAttribute("voter");
%>
<ul>
<li><a class="active" href="Voting.jsp">Home</a></li>
<li><a href="">Welcome</a></li>
<li><a href="ApplyCandidate.jsp">Apply for Candidate</a></li>
<li><a href="">Logout</a></li>
</ul>
<div class="user">
<center><h1>Voter Dashboard</h1></center>
<form action="">
<h2>Voter  Details:</h2>
<img src="user.png" alt="user" style="width: 100px;height: 100px;">
<table>
<tr>
<td>Id:</td>
<td><%= v.getId() %></td>
</tr>
<tr>
<td>Name:</td>
<td><%= v.getFirstname() %></td>
<tr>
<tr>
<td>Email Id:</td>
<td><%= v.getEmail() %></td>
<tr>
<tr>
<td>Phone No:</td>
<td><%= v.getMobileno() %></td>
<tr>
<tr>
<td>Status:</td>
<td><%= v.getStatus() %></td>
<tr>
</table>
</form>
<h3><%= v.getFirstname() %></h3>
<h4>Do Voting</h4>
<%
 List<Candidate> candList=(List)request.getAttribute("listOfCand");

for(Candidate can: candList)
{
%>
<form action="addVote">
<input type="radio" name="candidate" value="<%= can.getEmail()%>"><label>&nbsp;&nbsp;&nbsp;&nbsp;<%= can.getFirstname() %></label><br>
<%
}
if(v.getStatus().equalsIgnoreCase("Not Voted"))
{
%>
<input type="hidden" name="voter" value="<%= v.getEmail()%>">
<input type="submit" value="Vote">

</form>
<%
}
String candName=(String)request.getAttribute("name");


if(candName!=null)
{
%>
<h3 style="color: green"><%=v.getFirstname()%>&nbsp;&nbsp;&nbsp;Voted To <%=candName %></h3>
<%
}
%>
</div>
</body>
</html>