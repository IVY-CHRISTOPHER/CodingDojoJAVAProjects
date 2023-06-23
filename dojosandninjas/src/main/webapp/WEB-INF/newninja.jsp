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
<title>Create a Ninja</title>
<!-- Add Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>New Ninja</h1>
		<form:form action="/create/new" method="post" modelAttribute="ninja">
			<form:errors path="dojo"/>
			<div class="form-group">
				<form:label path="dojo">Dojo:</form:label>
				<form:select path="dojo" class="form-control">
					<c:forEach var="onedojo" items="${dojos}">
						<form:option value="${onedojo.id}" path="dojo">
							<c:out value="${onedojo.name}"/>
						</form:option>
					</c:forEach>
				</form:select>
			</div>
			<p>Hello</p>
			<form:errors path="firstname"/>
			<div class="form-group">
				<form:label path="firstname">First Name:</form:label>
				<form:input path="firstname" type="text" class="form-control"/>
			</div>
			<form:errors path="lastname"/>
			<div class="form-group">
				<form:label path="lastname">Last Name:</form:label>
				<form:input path="lastname" type="text" class="form-control"/>
			</div>
			<form:errors path="age"/>
			<div class="form-group">
				<form:label path="age">Age:</form:label>
				<form:input path="age" type="number" class="form-control"/>
			</div>
			<input type="submit" value="Create Ninja" class="btn btn-primary"/>
		</form:form>
	</div>
	<!-- Add Bootstrap JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>