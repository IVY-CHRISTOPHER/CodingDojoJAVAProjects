<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="ISO-8859-1">
   <title>Insert title here</title>
   <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>
   <div class="container">
   <h1 class="d-flex justify-content-center">Edit Expense</h1>
      <form:form action="/expenses/${expense.id}" method="POST" modelAttribute="expense" class="form">
         <input type="hidden" name="_method" value="put">
         <div class="form-group">
            <form:label path="name" class="form-label">Expense Name:</form:label>
            <form:errors path="name" class="text-danger"/>
            <form:input path="name" type="text" class="form-control"/>
         </div>
         <div class="form-group">
            <form:label path="vendor" class="form-label">Vendor Name:</form:label>
            <form:errors path="vendor" class="text-danger"/>
            <form:input path="vendor" type="text" class="form-control"/>
         </div>
         <div class="form-group">
            <form:label path="amount" class="form-label">Amount:</form:label>
            <form:errors path="amount" class="text-danger"/>
            <form:input path="amount" type="number" class="form-control"/>
         </div>
         <div class="form-group">
            <form:label path="description" class="form-label">Description:</form:label>
            <form:errors path="description" class="text-danger"/>
            <form:textarea path="description" class="form-control"/>
         </div>
         <input type="submit" value="Submit" class="btn btn-primary">
      </form:form>
      <a href="/expenses" class="btn btn-secondary">Back</a>
   </div>
</body>
</html>