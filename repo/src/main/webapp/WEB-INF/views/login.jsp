<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
h1 {
	text-align: center;
	color: purple;
}

h2 {
	text-align: center;
	color: gray;
}

form {
	border-style: solid;
	border-width: 3px;
	width: 20%;
	border-color: gray;
	height: 40%;
	padding: 40px;
	border-radius: 20px;
}

input {
	width: 100%;
	height: 30px;
}

.button {
	width: 90px;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Welcome To CJC</h1>
		<hr>
		<br> <br> <br>

		<h2>Login</h2>
		<form action="validateCredential" method="post">
			<table>
				<tr>
					<td>Username</td>
					<td>:</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td>:</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><br></td>
					<td><br></td>
					<td><br> <input type="submit" value="Login"
						class="button"> &nbsp;<a href="register">Register</a></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td style="color: red;">${msg}</td>
				</tr>
			</table>

		</form>
	</div>

</body>
</html>