<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<c:url value="/css/style.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Reception Login</title>
</head>
<h1 align="center" style="background-color: teal;">Reception Login</h1>

<div class="full-page" align="center">
	<div class="navbar">
		<nav>
			<ul id='MenuItems'>
				<li><a href='home'>Home</a></li>
				<li><a href="adminLoginPage">Admin Login</a></li>
			</ul>
		</nav>
	</div>
	<hr><hr>
	<h2>${successs}</h2>
	<h2>${errorkeyy}</h2>
	<form action="loginReception" method="post">
		<table align="center">


			<tr style="text-decoration:; color: black;">
				<td><h3>Receptionist Id</h3></td>

				<td><input type="text" name="id" style="border: double;"
					required></td>
			</tr>

			<td><h3>Password</h3></td>

			<td><input type="password" name="password"
				style="border: double;" size="30" required="required"></td>
			</tr>

			<td><input type="submit" value="Login" /></td>
		</table>

	</form>
</div>
</body>
</html>