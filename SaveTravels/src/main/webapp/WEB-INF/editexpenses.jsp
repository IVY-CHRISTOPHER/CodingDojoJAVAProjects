<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="/expenses/${expense.id}" method="POST" modelAttribute="expense">
		<input type="hidden" name="_method" value="put">
		<div>
			<form:label path="name">Expense Name:</form:label>
			<form:errors path="name"/>
			<form:input path="name" type="text"/>
		</div>			
		<div>
			<form:label path="vendor">Vendor Name:</form:label>
			<form:errors path="vendor"/>
			<form:input path="vendor" type="text"/>
		</div>			
		<div>
			<form:label path="amount">Amount:</form:label>
			<form:errors path="amount"/>
			<form:input path="amount" type="number"/>
		</div>			
		<div>
			<form:label path="description">Description:</form:label>
			<form:errors path="description"/>
			<form:textarea path="description"/>
		</div>			
		<input type="submit" value="Add Expense">
		
	</form:form>
</body>
</html>