<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
<style>
body {
font-family: 'Comfortaa', cursive;
}
.btn-success:hover {
    color: #fff;
    background-color: #000000;
    border-color: #000000;
}
h4{
 font-family: 'Fira Sans Extra Condensed', sans-serif;}
#search-btn {
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
.btn-success:hover{
    color: #fff;
    background-color: #000000;
    border-color: #000000;
}
</style>
<body class="container" style="padding:10px;margin-top:20px">
<h4>Enter the Employee ID</h2>
 <form:form method = "GET" action = "/emp" modelAttribute="employee_search">
  <form:input path = "id" class="form-control mb-2" required="required"/>
    <input class="btn btn-success" type = "submit" value = "Search Employee" id="search-btn" />
 </form:form>
 	<a href="/" class="btn btn-success" style="margin-top:20px">Add New Employee</a>
		<a href="/search" class="btn btn-success" style="margin-top:20px">Search Employee</a>
			<a href="/update" class="btn btn-success" style="margin-top:20px">Update Employee</a>
</body>
</html>