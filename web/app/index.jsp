<%-- 
    Document   : main
    Created on : Oct 21, 2020, 6:21:37 PM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../shared/head.jsp"/>
    <link rel="stylesheet" href="assets/style.css">
    <body>

        <div class="alert alert-success" role="alert">
            <p>Hola ${name}! has iniciado correctamente</p>
        </div>

        <jsp:include page="../shared/footer.jsp"/>
    </body>
</html>
