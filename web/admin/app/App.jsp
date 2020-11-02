<%-- 
    Document   : app
    Created on : Oct 30, 2020, 5:41:43 PM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../../shared/head.jsp"/>
    <body>
        <a href="${pageContext.request.contextPath}/admin/app/list-users" class="btn btn-primary">Usuarios</a>
        <a href="${pageContext.request.contextPath}/admin/app/list-products" class="btn btn-dark">Productos</a>
    </body>
</html>
