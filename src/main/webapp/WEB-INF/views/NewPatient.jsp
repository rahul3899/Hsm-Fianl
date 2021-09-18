<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>New Account</title>
<c:url value="/css/style2.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">

</head>
<h1 style="background-color: teal;" align="center">Add New Patient</h1>
<div class="full-page" align="center">
	<div class="navbar">

		<nav>
			<ul id='MenuItems'>
				<li><a href='home'>Home</a></li>
				<li><a href="receptionL">Receptionist</a></li>
				<li><a href="adminLoginPage">Admin Login</a></li>


			</ul>
		</nav>
	</div>
	<br>
	<body>
		<hr>
		<hr>




	<form action="savePatient" method="post">
	<table align="center">

		<tr>
			<td><h3 style="color:red; ">Patient Id:</h3></td>
			<td><input type="text" name="id" required /></td>
			
			<td ><h3 style="color:red; ">Name:</h3></td>
			<td><input type="text" name="name" required
			 /></td>
		</tr>
		
		<tr>
			<td><h3 style="color:red; ">Phone Number:</h3></td>
			<td><input type="text" name="phoneNumber" placeholder="810...."
				required /></td> <td><h3 style="color:red; ">Email Id:</h3></td>
			<td><input type="text" name="emailId"></td>
		</tr>

		
		<tr>
			<td><h3 style="color:red; ">Age:</h3></td>
			<td><input type="text" name="age" required></td><td><h3 style="color:red; ">Gender:</h3></td>
			<td><input type="text" name="gender" required></td>
		</tr>
		<tr>
			
		</tr>
		<tr>
			<td><h3 style="color:red; ">Address</h3></td>
			<td><input type="text" name="address" required /></td>	<td><h3 style="color:red; ">Medical History</h3></td>
			<td><input type="text" name="medicalHistory" required /></td>
		</tr>
		<tr>
		
		</tr>

		<tr>
			<td><input type="Submit" name="submit" value="Submit"
				 /></td>

			<td><input type="Reset" name="reset" value="Reset"
				 /></td>
		</tr>


	</table></form>

</body>
</div>
</html>