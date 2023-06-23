<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create a Dojo</title>
<!-- Add Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>New Dojo</h1>
		<form:form action="/create/dojo" modelAttribute="dojo" method="post">
			<form:input path="Id" type="hidden"/>
			<div class="form-group">
				<form:label path="name">Name:</form:label>
				<form:errors path="name"/>
				<form:input path="name" type="text" class="form-control" placeholder="City Name"/>
			</div>
			<input type="submit" value="Create Dojo" class="btn btn-primary"/>
		</form:form>
	</div>
	<!-- Add Bootstrap JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>