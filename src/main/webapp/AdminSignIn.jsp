<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin SignIn</title>
<style type="text/css">
li {
	float: left;
}

ul {
	padding: 10px;
	background: black;
	margin: 0;
	padding: 0;
	overflow: hidden;
	list-style-type: none;
}

li a {
	display: block;
	text-decoration: none;
	color: white;
	padding: 15px 15px;
	font-size: 20px;
}

.active {
	background-color: green;
}

.admin {
	border: 2px solid black;
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
	<div class="admin">
		<center>
			<form action="adminLogin">
				<br>
				<h1>Admin SigIn</h1>
				<label>Email:</label><input type="email"
					placeholder="Enter Your Email" name="email" required="required"><br>
				<br>
				<label>Password:</label> <input type="password"
					placeholder="Enter Password" name="password" required="required">
				<br> <br> <input type="submit" value="SingIn">
			</form>
			<%
		String status=(String)request.getAttribute("loginAdmin");
		if(status!=null)
		{
		%>
		<h1 style="color: red"><%=status %></h1>
		<%
		}
		%>
		</center>
	</div>
</body>
</html>