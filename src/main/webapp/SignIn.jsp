<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style type="text/css">
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

.signin{
border:1px solid green;
}
td{
padding-bottom: 15px;
}
.admin{
border:1px solid green;
}
</style>
</head>
<body>
<ul>
<li><a class="active" href="">Home</a></li>
<li><a href="VoterRegistrarion.jsp">New Voter Registration</a></li>
<li><a href="SignIn.jsp">Voter SignIn</a></li>
<li><a href="AdminSignIn.jsp">Admin SingIn</a></li>
<li><a href="">About</a></li>
</ul>
<div class=signin>
<center>
<form action="voterLogin">
<h2>SignIn</h2>
<table>
<tr>
<td>Email:</td><td><input type="email" placeholder="Enter Your email" name="email"></td>
</tr>
<tr>
<td>Password:</td><td><input type="password" placeholder="Enter Your Password" name="password"></td>
</tr>
</table>
<input type="submit" value="SigIn">
</form>
<br>
<br>
<%
  String status=(String)request.getAttribute("loginStatus");
if(status!=null)
{
%>
<h1 style="color:red"><%=status %></h1>
<%
}
%>
</center>
</div>
</body>
</html>