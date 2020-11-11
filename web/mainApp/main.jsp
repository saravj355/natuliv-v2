<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/mainApp/assets/css/style.css">
<body>
    <jsp:include page="shared/navbar/navbar.jsp"/>
    <h1>Recomendados para ti</h1>
    <jsp:include page="../shared/footer.jsp"/>
    <script src="${pageContext.request.contextPath}/mainApp/assets/js/app.js"></script>
</body>
