<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>CencolShare</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
	<script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Home page</h1>
<p>
Welcome to "Todo application".<br/>
<i>${message}</i><br/>
<a href="${pageContext.request.contextPath}/todo/create.html"><b>Todo List Page</b></a><br/>
<a href="${pageContext.request.contextPath}/todo/list.html"><b>User List</b></a><br/>
</p>
</body>
</html>