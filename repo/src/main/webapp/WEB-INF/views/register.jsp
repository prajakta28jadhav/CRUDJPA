<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	width: 22%;
	border-color: gray;
	height: 40%;
	padding: 40px;
	border-radius: 20px;
}

input[type=text] {
	width: 100%;
	height: 25px;
}

.button {
	width: 100px;
	height: 35px;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Welcome To CJC</h1>
		<hr>
		<br> <br> <br>

		<h2>Registration</h2>
		<form action="saveData">
			<table>
				<tr>
					<td>Name</td>
					<td>:</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Username</td>
					<td>:</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td>:</td>
					<td><input style="height: 25px; width: 100%" type="password"
						name="password"></td>
				</tr>
				<tr>
					<td>Mobile No.</td>
					<td>:</td>
					<td><input type="text" name="mobileno"></td>
				</tr>
				<tr>
					<td>Address</td>
					<td>:</td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<td><br> <br></td>
					<td><br> <br></td>
					<td><br> <br> <input type="submit" value="Register"
						class="button"> &nbsp;<a href="login">Login</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>

</html>