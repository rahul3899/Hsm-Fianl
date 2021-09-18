<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<c:url value="/css/style.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
<title>Reception Home</title>
</head>
<h1 style="background-color: teal;" align="center">Welcome
	${receptionkey}</h1>
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
		<form action="AddnewAppointment" method="post">
			<table>
				<td><h2>Add New Patient :</h2></td>

				<td><input type="submit" value="ADD"></td>
			</table>
		</form>

		<form action="showAllAppoitment" method="post">
			<table>
				<td><h2>Show All Appointments :</h2></td>

				<td><input type="submit" value="SHOW"></td>
			</table>
		</form>
		<form action="deleteAppoitment" method="post">
			<table>
				<td><h2>Cancel Appointments :</h2></td>

				<td><input type="submit" value="CANCEL"></td>
			</table>
		</form>
		<form action="findAppointmentById" method="post">
			<table>
				<td><h2>Find Appointment by Id :</h2></td>
				<td><input type="text" name="id" required="required"></td>
				<td><input type="submit" value="SEARCH"></td>${errorkey}
			</table>

		</form>




	</body>
</div>
</html>