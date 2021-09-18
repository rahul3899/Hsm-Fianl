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




<h1 style="background-color: teal;" align="left">Welcome ${doctern}</h1>
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
<body >
	
	<!-- There is many function Doctor can view all Patient add and delete and update patient -->

	<form action="findPatientById" method="post">
		<table>
			<td><h4>Find Patient by Id</h4></td>
			<td><input type="text" name="id"></td>
			<td><input type="submit" value="Search">
					<td>${patientById.name}</td>
		</table>

	</form>
	
	<form action="showAllPatient">
		<table>
			
			<td><h4>Show All Patient</h4></td>
			<td><input type="submit" value="Show All">
					
		</table>

	</form>
<form action="NewPatient">
		<table>
			
			<td><h4>Save New Patient</h4></td>
			<td><input type="submit" value="Save">
					
		</table>

	</form>
	
	
</body>
</div>
</html>