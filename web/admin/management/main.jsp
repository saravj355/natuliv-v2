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
        <a href="${pageContext.request.contextPath}/admin/managment/users.jsp" class="btn btn-primary">Listar Usuarios</a>

        <jsp:include page="../../shared/footer.jsp"/>
    </body>
</html>
