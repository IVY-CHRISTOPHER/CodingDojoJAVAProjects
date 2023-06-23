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
    <title>Index</title>
    <!-- Add Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div>
            <a href="/dojo/new" class="btn btn-primary">New Dojo</a>
            <a href="/ninja/new" class="btn btn-primary">New Ninja</a>
        </div>
        <h1>All Dojos</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="onedojo" items="${dojos}">
                    <tr>
                        <td><a href="/dojo/info/${onedojo.id}"><c:out value="${onedojo.name}"/></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <!-- Add Bootstrap JS -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>