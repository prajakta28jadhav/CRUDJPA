
<%@page import="com.cjc.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<script type="text/javascript">
	function updateRecord() {
		document.myForm.action = "edit";
		document.myForm.submit();
	}
	function deleteRecord() {
		document.myForm.action = "delete";
		document.myForm.submit();
	}
</script>
</head>
<body style="text-align: center;">
	<h1>Welcome To CJC</h1>
	<hr>
	<br>
	<br>
	<br>

	<h2>Student Details</h2>

	<form name="myForm">
		<table border="2px" align="center">


			<tr>
				<th>Action</th>
				<th>id</th>
				<th>Name</th>
				<th>Username</th>
				<th>Password</th>
				<th>Mobile No.</th>
				<th>Address</th>
			</tr>
			<%
				List<Student> list = (List) request.getAttribute("studList");
			for (Student stud : list) {
			%>
			<tr>
				<td><input type="radio" name="id" value="<%=stud.getId()%>"></td>
				<td><%=stud.getId()%></td>
				<td><%=stud.getName()%></td>
				<td><%=stud.getUsername()%></td>
				<td><%=stud.getPassword()%></td>
				<td><%=stud.getMobileno()%></td>
				<td><%=stud.getAddress()%></td>
			</tr>
			<%
				}
			%>

		</table>
		<br>
		<br> <input type="button" onclick="updateRecord()" value="Edit">&nbsp;&nbsp;
		<input type="button" onclick="deleteRecord()" value="Delete">



	</form>

</body>
</html>