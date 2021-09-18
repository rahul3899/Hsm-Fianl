<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save New Appointment</title>
<c:url value="/css/style2.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
</head>
<h1 style="background-color: teal;" align="center">Save New Appointment</h1>
<div class="full-page" align="center">
	<div class="navbar">
		<nav>
			<ul id='MenuItems'>
				<li><a href='home'>Home</a></li>
				<li><a href="receptionL">Receptionist</a></li>



			</ul>
		</nav>
	</div>
	

<!-- After login come here and here is 4 function go to admin login or go to doctor page or reception
     or logout -->
     <form action="saveAppointment" method="post">
			<table align="center">
				<tr>
					<td><h3>Appointment Id</h3></td>
					<td><input type="text" name="appointment_id" 	style="border: double;" required="required"></td>
				</tr>
				<tr>
					<td><h3>Patient Name</h3></td>
					<td><input type="text" name="patientName" 	style="border: double;" required="required"></td>
				</tr>
				<tr>
					<td><h3>Doctor Name</h3></td>
					<td><input type="text" name="doctorName" 	style="border: double;" required="required"></td>
				</tr>
				<tr>
					<td><h3>Date</h3></td>
					<td><input type="text" name="date" 	style="border: double;" required="required"></td>
				</tr>
				
				<tr>
					<td><h3>Prescription</h3></td>
					<td><input type="text" name="prescription" 	style="border: double;" required="required"></td>
				</tr>
				<tr>
					<td><h3>Confirm(Yes/No)</h3></td>
					<td><input type="text" name="confirmed" 	style="border: double;" required="required"></td>
				</tr>
				<tr>
					<td><input type="Submit" name="submit" value="Submit"
						 /></td>

					<td><input type="Reset" name="reset" value="Reset"
						 /></td>
				</tr>

			</table>
		</form>
</div>
</html>