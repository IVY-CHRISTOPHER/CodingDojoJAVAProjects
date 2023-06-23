<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach, etc. --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Dojo info</title>
    <!-- Add Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1><c:out value="${dojo.name}"/> Ninjas</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Age</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ninja" items="${dojo.ninjas}">
                    <tr>
                        <td><c:out value="${ninja.firstname}"/></td>
                        <td><c:out value="${ninja.lastname}"/></td>
                        <td><c:out value="${ninja.age}"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="/index" class="btn btn-primary">Back</a>
    </div>
    <!-- Add Bootstrap JS -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>