<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<center><h1>Spring data Bootstrap Todo example</h1></center>
<button type="button" class="btn btn-success btn-lg">
<a href="${pageContext.request.contextPath}/todo/create">
 Add New</a></button>
<table class="table table-bordered">
 <tr>
 	<td><b>Task Name</b></td>
	 <td><b>Task Description</b></td>
	 <td><b>Task Status</b></td>
 	<td><b>Task priority</b></td>
 	<td><b>Task Date</b></td>
 	<td><b>Action</b></td>
 </tr>
 
 <c:forEach items="${requestScope.todos}" var="t">
  <tr>
 	<td>${t.title }</td>
 	<td>${t.desc }</td>
 	<td>${t.status }</td>
	<td>${t.priority}</td>
 	<td>${t.date }</td>
 	<td><button type="button" class="btn btn-success btn-lg">
 	<a href="${pageContext.request.contextPath}/todo/edit/${t.id}">Edit</button>
  	<button type="button" class="btn btn-danger btn-lg">Delete</button>
 	</td>
 </tr>
 </c:forEach>
  
</table>
</body>
</html>