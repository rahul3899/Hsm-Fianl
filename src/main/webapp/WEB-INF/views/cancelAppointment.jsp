<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
<title>Cancel Appointments</title>
<c:url value="/css/style.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">

</head>
<h2 align="left" style="text-transform: uppercase; background: teal;">Cancel
	Appointment</h2>
<div class="full-page" align="center">
	<div class="navbar">

		<nav>
			<ul id='MenuItems'>
				<li><a href='home'>Home</a></li>
				<li><a href="receptionL">Receptionist</a></li>



			</ul>
		</nav>
	</div>


	<hr>
	<hr>




	<br />
	<form action="DeleteAppointment" method="post">

		<table>
			<tr>
				<td>Appointment ID:</td>
				<td><input type="text" name="appointment_id"
					required="required" /></td>
			</tr>
			<tr>
				<td>Note: This action can not be undone!</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Confirm"></td>
			</tr>
		</table>
	</form>
</div>

</html>
