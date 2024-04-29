<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter Registration</title>
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

.reg{
border:2px solid green;
height: auto;
}
form{
content: justify;
}
td{
padding-bottom:10px;
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
<div class="reg">
<center>
<form action="signup">
<h1>New Voter Registration</h1>
<table>
<tr>
<td>FirstName:</td><td><input type="text" placeholder="Enter your first name" name="firstname" pattern="[A-Za-z]{3,}" required="required"></td>
</tr>
<tr>
<td>LastName:</td><td><input type="text" placeholder="Enter your last name" name="lastname" pattern="[A-Za-z]{2,}" required="required"></td>
</tr>
<tr>
<td>DOB: </td><td><input type="date" name="dob"  required="required"></td>
</tr>
<tr>
	<td>Gender: </td><td><input type="radio" name="gender" value="Male">Male
						 <input type="radio" name="gender" value="Female">Female</td>
</tr>
<tr>
	<td>Aadhaar: </td><td><input type="text" placeholder="Enter Your Aadhaar" name="aadharno" required="required">
</tr>
<tr>
<td>PAN No:</td><td><input type="text" placeholder="Enter Your Pan No" name="panno" required="required"></td>
</tr>
<tr>
<td>EmailId:</td><td><input type="email" placeholder="Enter your Email" name="email" required="required"></td>
</tr>
<tr>
<td>Mobile No:</td><td><input type="number" placeholder="Enter your Mobile number" name="mobileno" required="required"></td>
</tr>
<tr>
<td>Address:</td><td><input type="text" placeholder="Enter Address" name="address" required="required"></td>
</tr>
<tr>
<td>User Name:</td><td><input type="text" placeholder="Enter User Name" name="username" required="required"></td>
</tr>
<tr>
<td>Password:</td><td><input type="password" placeholder="Enter your password" name="password" required="required"></td>
</tr>

</table>
<input type="submit" value="SignUp">
</form>
</center><br><br>
</div>
<% String msg=(String)request.getAttribute("message") ;
if(msg!=null)
{
%>
<h2 style="color:green"><%= msg%></h2>
<%
}
%>
</body>
</html>