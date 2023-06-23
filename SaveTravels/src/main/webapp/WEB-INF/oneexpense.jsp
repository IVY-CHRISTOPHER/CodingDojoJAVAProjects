<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach, etc. --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Expense Details</title>
    <!-- Add Bootstrap CSS -->
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
         <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="d-flex justify-content-center">Expense Details</h1>
        <table class="table table-striped">
            <tr>
                <th>Expense Name:</th>
                <td><c:out value="${expense.name}" /></td>
            </tr>
            <tr>
                <th>Vendor:</th>
                <td><c:out value="${expense.vendor}" /></td>
            </tr>
            <tr>
                <th>Amount:</th>
                <td><c:out value="${expense.amount}" /></td>
            </tr>
            <tr>
                <th>Description:</th>
                <td><c:out value="${expense.description}" /></td>
            </tr>
        </table>
            <a href="/expenses" class="btn btn-secondary">Back</a>
    </div>
</body>
</html>