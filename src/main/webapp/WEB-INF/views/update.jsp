<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Comfortaa:300&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Fira+Sans+Extra+Condensed&display=swap" rel="stylesheet">
<style>
body {
font-family: 'Comfortaa', cursive;
}
h4 {
    display: flex;
    width: 100%;
     font-family: 'Fira Sans Extra Condensed', sans-serif;
    justify-content: center;
    align-items: center;
    text-align: center;
    margin-top: 50px;
}
h4:before,
h4:after {
    content: '';
    border-top: 2px solid;
    margin: 0 20px 0 0;
    flex: 1 0 20px;
}

h4:after {
    margin: 0 0 0 20px;
}
h4.p-10 {
    padding: 20px;
}
form#employee {
	padding: 20px;
}
#update-btn {
    color: #fff;
    background-color: #0077be;
    border-color: #0077be;
    min-width: 100%;
    position: relative;
    margin-top: 20px;
}
.btn-success {
    color: #fff;
    background-color: #0077be;
    border-color: #0077be;
    position: relative;
    margin-top: 20px;
    width:33%;
}
#update-btn,.btn-success:hover{
    color: #fff;
    background-color: #000000;
    border-color: #000000;
}
</style>
<title>Insert title here</title>
</head>
<body class=container>
<h4>UPDATE EMPLOYEE DETAILS</h4>
 <form:form id="employee" method = "POST" action = "/empupdate" class="card"  modelAttribute="employee_update">
		<table>
			<tr>
				<td><form:label path="id">ID</form:label></td>
				<td><form:input class="form-control mb-2" path="id"  required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="name">New Name</form:label></td>
				<td><form:input class="form-control mb-2" path="name"  required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="designation">New Designation</form:label></td>
				<td><form:input class="form-control mb-2" path="designation" required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="expertise">New Expertise</form:label></td>
				<td><form:input class="form-control mb-2" path="expertise" required="required"/></td>
			</tr>
			<tr>
				<td colspan="2"><input class="btn btn-success" type="submit"
					value="Submit" id="update-btn" /></td>
			</tr>
		</table>
	</form:form>
		<a href="/" class="btn btn-success" style="margin-top:20px">Add New Employee</a>
		<a href="/search" class="btn btn-success" style="margin-top:20px">Search Employee</a>
			<a href="/update" class="btn btn-success" style="margin-top:20px">Update Employee</a>
</body>
</html>