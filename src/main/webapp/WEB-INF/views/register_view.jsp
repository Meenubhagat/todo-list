<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Insert title here</title>
				<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
					<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	</head>
	<body>
		<center><h1 style="margin:20px;padding:10px;background-color:pink;color:black;"> Registration Data View </h1></center>
			<a type="button" class="btn btn-success btn-lg" href="${pageContext.request.contextPath}/register/create">
			
			 <b>Add New</b>
			</a> 
	<table class="table table-bordered">
 	<tr>
 		<td><b>Name</b></td>
 		<td><b>Full Name</b></td>
 		<td><b>Address</b></td>
 		<td><b>Country</b></td>
 		<td><b>Zipcode</b></td>
 		<td><b>Email Address</b></td>
 		<td><b>Gender</b></td>
 		<td><b>Language</b></td>
 		<td><b>Dateofbirth</b></td>
 		<td><b>Education Level</b></td>
 		<td><b>Action</b></td>
 		
 	</tr>
 	
 	<c:forEach items="${requestScope.register}" var="r">
  	<tr>
	 <td>${r.name}</td>
	 <td>${r.firstname} ${r.middlename} ${r.lastname}</td>
	 <td>${r.address }</td>
	 <td>${r.country }</td>
	 <td>${r.zipcode}</td>
	 <td>${r.email }</td>
	 <td>${r.gender }</td>
	 <td>${r.language }</td>
 	<td>${r.date }</td>
 	<td>${r.educationlevel }</td>
 	
 	<td>
 	<a class="btn btn-success btn-lg" href="${pageContext.request.contextPath}/register/edit/${r.id}">Edit</a>
  	<a class="btn btn-danger btn-lg" href="${pageContext.request.contextPath}/register/delete/${r.id}">Delete</a>
 	</td>
 	</tr>
 	</c:forEach>
 				</table>
	</body>
</html>