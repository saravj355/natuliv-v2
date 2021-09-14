<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="navbar.jsp" />
<body>
    <h1 class="text-center mt-5">Usuarios</h1>
    <jsp:include page="./analytics/user-quantity.jsp" /> 
    <jsp:include page="./analytics/survey-questions.jsp" /> 
</body>
