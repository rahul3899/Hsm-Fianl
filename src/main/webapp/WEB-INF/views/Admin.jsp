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
<h2 align="left" style="text-transform: uppercase; background: teal;">Welcome
	${adminn}</h2>
<div class="full-page" align="center">

	<!-- <h1 align="center" style="background-color: teal;">ADMIN <br>\</h1> -->
	<div class="navbar">

		<nav>
			<ul id='MenuItems'>
				<li><a href='home'>Home</a></li>
				<li><a href="receptionL">Receptionist</a></li>
				<li><a href="adminLoginPage">Admin Login</a></li>

			</ul>
		</nav>
	</div>
	<body><hr><hr>
		<!--Here admin function that is admin can add delete doctor, patient  -->


		<h2>${success}</h2>
		<h2>${errorkey}</h2>

		<a href=""></a>

		<form action="deletePatient">
			<table>
				<td><h3>Delete Patient</h3></td>
				<td><input type="text" name="id" placeholder="Patient Id"
					required="required" style="border: double;"></td>

				<td><input type="submit" value="Delete"
					style="background-color: teal;"></td>

			</table>

		</form>
		<h2>${successs}</h2>
		<h2>${errorkeyy}</h2>
		<form action="deleteDoctor">
			<table>
				<td><h3>Delete Doctor</h3></td>
				<td><input type="text" name="id" placeholder="Doctor Id"
					required="required" id="in" style="border: double;"></td>

				<td><input type="submit" style="background-color: teal;"
					value="Delete" /></td>
			</table>

		</form>
		<h2>${errorkeyy}</h2>
		<form action="showAllDoctor">
			<table>
				<td><h3>Doctor List</h3></td>
				
				<td><input type="submit" style="background-color: teal;"
					value="Show" /></td>
			</table>

		</form>







</body>
</div>



</html>
