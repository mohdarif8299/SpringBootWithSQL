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
<title>Insert title here</title>
<style>
body {
font-family: 'Comfortaa', cursive;
}
span {
    color: #0077be;
    font-size: 20px;
}
h2 {
    display: flex;
    width: 100%;
     font-family: 'Fira Sans Extra Condensed', sans-serif;
    justify-content: center;
    align-items: center;
    text-align: center;
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
p {
color:#0077be;
font-size:20px;
}
b {
    width: 300px;
    color: #000;
    display: inline-block;
}
.btn-success {
    color: #fff;
    background-color: #0077be;
    border-color: #0077be;
    position: relative;
    margin-top: 20px;
    width:33%;
}
.btn-success:hover{
    color: #fff;
    background-color: #000000;
    border-color: #000000;
}
</style>
</head>
<body class="container" style="padding:10px">
<h2>Searched Results</h2>
<p><b>EMPLOYEE ID</b>${employee_search.id }</p>
<p><b>EMPLOYEE NAME</b>${employee_search.name }</p>
<p><b>EMPLOYEE DESIGNATION</b>${employee_search.designation }</p>
<p><b>EMPLOYEE EXPERTISE</b>${employee_search.expertise }</p></div>
	<a href="/" class="btn btn-success" style="margin-top:20px">Add New Employee</a>
		<a href="/search" class="btn btn-success" style="margin-top:20px">Search Employee</a>
			<a href="update" class="btn btn-success" style="margin-top:20px">Update Employee</a>
</body>
</html>