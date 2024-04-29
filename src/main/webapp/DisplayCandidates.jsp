<%@page import="com.jsp.vote.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Candiates</title>
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
<h1><u>All Candidates Details</u></h1>
<br>
<%
List<Candidate> cList=(List)request.getAttribute("allCandidates");
%>
<table border="2">
<tr>
<th>EMAIL</th>
<th>AADHAR NO</th>
<th>ADDRESS</th>
<th>CRIMINAL BACKGROUND</th>
<th>DOB</th>
<th>FIRST NAME</th>
<th>GENDER</th>
<th>LAST NAME</th>
<th>MOBILE NO</th>
<th>MONTHLY INCOME</th>
<th>PAN NO</th>
<th>TOTAL PROPERTY</th>
<th>YEARLY INCOME</th>
<th>AGE</th>
<th>VOTES</th>
</tr>
<%
for(Candidate can:cList)
{	
%>
<tr>
<td><%=can.getEmail() %></td>
<td><%=can.getAadharno() %></td>
<td><%=can.getAddress() %></td>
<td><%=can.getCriminalbackground()%></td>
<td><%=can.getDob() %></td>
<td><%=can.getFirstname() %></td>
<td><%=can.getGender() %></td>
<td><%=can.getLastname() %></td>
<td><%=can.getMobileno()%></td>
<td><%=can.getMonthlyincome() %></td>
<td><%=can.getPanno() %></td>
<td><%=can.getTotalproperty() %></td>
<td><%=can.getYearlyincome() %></td>
<td><%=can.getAge() %></td>
<td><%= can.getVotes() %>
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