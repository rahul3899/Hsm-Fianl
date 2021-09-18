<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<c:url value="/css/style.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">

<title>All Appointments</title>
</head>
<h1 style="background-color: teal;" align="center">Doctor
	Appointments</h1>
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
	<br> <br>
	<body>
		<table border="1" style="background-color: teal;">
			<tr align="center">
				<th colspan="7"><h1>All Appointments</h1></th>
			</tr>
			<tr>
				<th>Appointment ID</th>
				<th>Patient Name</th>
				<th>Doctor Name</th>
				<th>Date</th>
				<th>Prescription</th>
				<th>Confirmed(Yes/No)</th>
			</tr>
			<c:forEach items="${AllAppointment}" var="user">
				<tr>
					<td>${user.appointment_id}</td>
					<td>${user.patientName}</td>
					<td>${user.doctorName}</td>
					<td>${user.date}</td>
					<td>${user.prescription}</td>
					<td>${user.confirmed}</td>
				</tr>
			</c:forEach>

		</table>

	</body>
</div>
</html>