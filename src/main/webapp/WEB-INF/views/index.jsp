<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<META HTTP-EQUIV="expires" CONTENT="0">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<html>
<head>
<title>Spring Boot with MySQL</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Fira+Sans+Extra+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Comfortaa:300&display=swap" rel="stylesheet">
<style>
body {
font-family: 'Comfortaa', cursive;
}
h1{
 font-family: 'Fira Sans Extra Condensed', sans-serif;
}
h2 {
    display: flex;
    width: 100%;
    font-family: 'Fira Sans Extra Condensed', sans-serif;
    justify-content: center;
    align-items: center;
    text-align: center;
}
.btn-success:hover{
    color: #fff;
    background-color: #000000;
    border-color: #000000;
}
.btn-success:active{
    color: #fff;
    background-color: #000000;
    border-color: #000000;
}
h2:before,
h2:after {
    content: '';
    border-top: 2px solid;
    margin: 0 20px 0 0;
    flex: 1 0 20px;
}

h2:after {
    margin: 0 0 0 20px;
}
h2.p-10 {
    padding: 20px;
}
@media (min-width: 1200px) {
.container {
    max-width: 1140px;
    margin: auto;
    position: absolute;
    top: 0px;
    bottom: 0px;
    left: 0px;
    right: 0px;
}
}
form#employee {
	padding: 20px;
}
#create-btn{
    color: #fff;
    background-color: #000;
    border-color: #000;
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
</style>
</head>

<body class="container">
<h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
	<h2 class="p-10">ADD NEW EMPLOYEE</h2>
	<form:form method="POST" class="card" action="/employees"
		modelAttribute="employee">
		<table>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input class="form-control mb-2" path="name"  required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="designation">Designation</form:label></td>
				<td><form:input class="form-control mb-2" path="designation" required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="expertise">Expertise</form:label></td>
				<td><form:input class="form-control mb-2" path="expertise" required="required"/></td>
			</tr>
			<tr>
				<td colspan="2"><input class="btn btn-success" type="submit"
					value="Submit" id="create-btn"/></td>
			</tr>	
		</table>
	</form:form>
	<a href="/all" class="btn btn-success" id="all-btn">All Employees</a>
		<a href="/search" class="btn btn-success" style="margin-top:20px">Search Employee</a>
			<a href="update" class="btn btn-success" style="margin-top:20px">Update Employee</a>
</body>
</html>