<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach, etc. --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   <!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <!-- Add Bootstrap CSS -->
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
         <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Save Travels</title>
</head>
<body>
    <div class="container">
        <h1 class="d-flex justify-content-center">Save Travels</h1>
        <div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Expense</th>
                        <th>Vendor</th>
                        <th>Amount</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="expense" items="${expenses}">
                        <tr>
                            <td><a href="/expense/${expense.id}" type="${expense.id}"><c:out value="${expense.name}" /></a></td>
                            <td><c:out value="${expense.vendor}" /></td>
                            <td>$<c:out value="${expense.amount}" /></td>
                            <td><a href="/expenses/${expense.id}/edit">Edit</a></td>
                            <td>
                                <form action="/expense/${expense.id}" method="post">
                                    <input type="hidden" name="_method" value="delete">
                                    <input type="submit" value="Delete" class="btn btn-danger">
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div>
            <h1 class="d-flex justify-content-center">Add an expense:</h1>
            <form:form action="/create" method="POST" modelAttribute="expense">
                <div class="form-group">
                    <form:label path="name">Expense Name:</form:label>
                    <form:errors path="name" cssClass="text-danger" />
                    <form:input type="text" id="name" path="name" class="form-control"/>
                </div>
                <div class="form-group">
                    <form:label path="vendor">Vendor Name:</form:label>
                    <form:errors path="vendor" cssClass="text-danger" />
                    <form:input type="text" id="vendor" path="vendor" class="form-control"/>
                </div>
                <div class="form-group">
                    <form:label path="amount">Amount:</form:label>
                    <form:errors path="amount" cssClass="text-danger" />
                    <form:input type="number" id="amount" path="amount" class="form-control"/>
                </div>
                <div class="form-group">
                    <form:label path="description">Description:</form:label>
                    <form:errors path="description" cssClass="text-danger" />
                    <form:textarea id="description" path="description" class="form-control"></form:textarea>
                </div>
                <input class="form-control bg-primary text-light" type="submit" value="Add Expense"/>
             </form:form>
		</div>
	</div>
</body>
</html>
        
             