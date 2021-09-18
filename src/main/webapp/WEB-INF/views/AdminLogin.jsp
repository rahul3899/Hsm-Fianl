<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>

<title>Login Page</title>
<c:url value="/css/style.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">


<script type="text/javascript">
function validate(){
	
	var a=document.getElementById("userId").value;
	var b=document.getElementById("password").value;
	if(a=""){
		alert("please fill all userId and Password Both");
		return false;
	}
	else{
		return true;
	}
}

</script>

</head>
<h1 style="background-color: teal;" align="center">Admin Login</h1>
<div class="full-page" align="center">
	<div class="navbar">

		<nav>
			<ul id='MenuItems'>
				<li><a href='home'>Home</a></li>
				<li><a href="receptionL">Receptionist</a></li>



			</ul>
		</nav>
	</div>
	<br> <br>
	<body>

		<form action="loginAdmin" method="post">
			<table align="center">
				<h1>${errorkey}</h1>
				<tr>
					<td ><h3>User Id:</h3></td>
					<td><input type="text" name="username" placeholder="ID"
						style="border: double;" required="required" id="userId"></td>
				</tr>

				<tr>
					<td><h3>Password:</h3></td>
					<td><input type="password" name="password"
						placeholder="Password" required="required" style="border: double;" id="password"></td>
				</tr>

				<tr>
					<td><input type="submit" name="submit" value="Login"
						style="background-color: teal;" onclick="validate()"></td>

				</tr>

			</table>
		</form>
</div>
</body>
</html>