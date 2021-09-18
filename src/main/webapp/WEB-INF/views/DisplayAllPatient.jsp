<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<c:url value="/css/style.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1 style="background-color: teal;" align="center">Patient List</h1>
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
	<body>

		<table border="1" style="background-color: teal">
			<tr align="center">
				<th colspan="8"><h1>Patient Details</h1></th>
			</tr>
			<tr>
				<th>Patient Id</th>
				<th>Name</th>
				<th>Email Id</th>
				<th>Gender</th>
				<th>Phone Number</th>
				<th>Age</th>
				<th>Medical History</th>
				<th>Address</th>
			</tr>
			<c:forEach items="${display}" var="user">
				<tr>
					<td>${user.id }</td>
					<td>${user.name }</td>
					<td>${user.emailId }</td>
					<td>${user.gender }</td>
					<td>${user.phoneNumber}</td>
					<td>${user.age}</td>
					<td>${user.medicalHistory}</td>
					<td>${user.address}</td>
				</tr>
			</c:forEach>

		</table>
	</body>
</div>
</html>