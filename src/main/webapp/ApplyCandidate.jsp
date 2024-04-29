<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candisdate Application</title>
</head>
<style>
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

.user {
	border: 2px solid green;
	height: auto;
	overflow: hidden;
}
</style>
<body>
	<ul>
		<li><a class="active" href="Voting.jsp">Home</a></li>
		<li><a href="">Welcome</a></li>
		<li><a href="">Apply for Candidate</a></li>
		<li><a href="">Logout</a></li>
	</ul>
	<center>
		<h1>Candidate Dashboard</h1>
		<br>
		<form action="addCandidate">
			<table>
				<tr>
					<td>FirstName:</td>
					<td><input type="text" placeholder="Enter your first name"
						name="firstname" pattern="[A-Za-z]{3,}" required="required"></td>
				</tr>
				<tr>
					<td>LastName:</td>
					<td><input type="text" placeholder="Enter your last name"
						name="lastname" pattern="[A-Za-z]{2,}" required="required"></td>
				</tr>
				<tr>
					<td>DOB:</td>
					<td><input type="date" name="dob" required="required"></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><input type="radio" name="gender" value="Male">Male
						<input type="radio" name="gender" value="Female">Female</td>
				</tr>
				<tr>
					<td>Aadhaar:</td>
					<td><input type="text" placeholder="Enter Your Aadhaar"
						name="aadharno" required="required">
				</tr>
				<tr>
					<td>PAN No:</td>
					<td><input type="text" placeholder="Enter Your Pan No"
						name="panno" required="required"></td>
				</tr>

				<tr>
					<td>Age:</td>
					<td><input type="number" placeholder="Enter Your Age"
						name="age" required="required"></td>
				</tr>

				<tr>
					<td>EmailId:</td>
					<td><input type="email" placeholder="Enter your Email"
						name="email" required="required"></td>
				</tr>

				<tr>
					<td>Mobile No:</td>
					<td><input type="number"
						placeholder="Enter your Mobile number" name="mobileno"
						required="required"></td>
				</tr>

				<tr>
					<td>Address:</td>
					<td><input type="text" placeholder="Enter Address"
						name="address" required="required"></td>
				</tr>

				<tr>
					<td>Monthly Income:</td>
					<td><input type="text" placeholder="Enter Monthly income"
						name="monthlyincome" required="required"></td>
				</tr>

				<tr>
					<td>Yearly Income:</td>
					<td><input type="text" placeholder="Enter your Yearly Income"
						name="yearlyincome" required="required"></td>
				</tr>

				<tr>
					<td>Total Property</td>
					<td><input type="text" placeholder="Enter your Total Property"
						name="totalproperty" required="required"></td>
				</tr>

				<tr>
					<td>Criminal Background:</td>
					<td><input type="radio" name="criminalbackground" value="Yes">Yes
						<input type="radio" name="criminalbackground" value="No">No</td>
				</tr>

			</table>

			<input type="submit" value="Apply">&nbsp;&nbsp;&nbsp;<input
				type="reset" value="Cancel">
		</form>
		<%
		String status = (String) request.getAttribute("status");
		if (status != null) {
			boolean check = (Boolean) request.getAttribute("check");
			if (check) {
		%>
		<h2 style="color: green;"><%=status%></h2>
		<%
		} else {
		%>
		<h2 style="color: red;"><%=status%></h2>
		<%
		}
		}
		%>
	</center>
	</form>
</body>
</html>