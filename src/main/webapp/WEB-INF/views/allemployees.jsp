<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Fira+Sans+Extra+Condensed&display=swap" rel="stylesheet">
<style>
body {
font-family: 'Comfortaa', cursive;
}
h2 {
    display: flex;
    width: 100%;
     font-family: 'Fira Sans Extra Condensed', sans-serif;
    justify-content: center;
    align-items: center;
    font-weight:900;
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
display:inline-block;
}
b {
    width: 300px;
    color: #000;
    display: inline-block;
}
.card {
    margin-top: 10px !important;
    padding: 20px !important;
}
.main {
    position: relative;
    top: 0px;
    bottom: 0px;
    left: 0px;
    right: 0px;
    margin: auto;
    padding: 20px;
    margin-bottom:50px;
}
img {
    float: right;
    position: absolute;
    right: 20px;
}
input {
    border: none;
}
input[type="submit"] {
    background-image: url(https://img.icons8.com/ios-glyphs/30/000000/trash--v1.png);
    background-color: #fff;
    padding: 13px;
    background-repeat: no-repeat;
    display: inline-block;
    position: absolute;
    right: 20px;
    top: 20px;
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
input.id {
    position: absolute;
    top: 20px;
    left: 320px;
    font-size: 20px;
    color: #0077be;
}
</style>
</head>
<body class="container" onload="document.refresh();">
<div class="main">
<h2>ALL EMPLOYEES</h2>
		<c:forEach var="temp" items="${allemployee}">
		<div  class="card">
		<p><b>EMPLOYEE ID</b><form:form method="GET" modelAttribute="deleted_employee" action="/delete"><form:input class="id" value="${temp.id}" path="id" readOnly="true"/>
		<input type="submit" value=""/>
		</form:form></p>
		<p><b>EMPLOYEE NAME </b>${temp.name}</p>
		<p><b>EMPLOYEE DESIGNATION  </b>${temp.designation}</p>
		<p><b>EMPLOYEE EXPERTISE  </b>${temp.expertise}</p>
		<input type="hidden" id="refreshed" value="no">
    <script type="text/javascript">

           onload=function(){
               var e=document.getElementById("refreshed");
               if(e.value=="no")e.value="yes";
               else{e.value="no";location.reload();}
           }

    </script>
		</div>
		</c:forEach>
		<a href="/" class="btn btn-success" style="margin-top:20px">Add New Employee</a>
		<a href="/search" class="btn btn-success" style="margin-top:20px">Search Employee</a>
			<a href="update" class="btn btn-success" style="margin-top:20px">Update Employee</a>
</div>
</body>
</html>