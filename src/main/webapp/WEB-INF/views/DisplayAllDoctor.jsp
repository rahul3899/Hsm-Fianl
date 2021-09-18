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
<h1 style="background-color: teal;" align="center">Doctor List</h1>
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

		<table border="1" align="center" style="background-image:url('hg.jpg'); ; ">
			<tr align="center">
				<th colspan="7"><h1>Doctor Details</h1></th>
			</tr>
			<tr>
				<th>Doctor Id</th>
				<th>Name</th>
				<th>Specialist</th>
				<th>Phone Number</th>
				<th>Password</th>
			</tr>
			<c:forEach items="${successs}" var="user">
				<tr>
					<td>${user.doctorId }</td>
					<td>${user.name }</td>
					<td>${user.specialist }</td>
					<td>${user.phoneNumber}</td>
					<td>********</td>

				</tr>
			</c:forEach>

		</table>
	</body>
</div>
</html>