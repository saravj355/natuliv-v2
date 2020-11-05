<%-- 
    Document   : app
    Created on : Oct 30, 2020, 5:41:43 PM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../shared/head.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">
    <body>
        <jsp:include page="navbar/navbar.jsp"/>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-6">
                    <div class="card mx-auto">
                        <a href="${pageContext.request.contextPath}/admin/users" class="btn btn-primary m-2 ">Usuarios</a>
                        <a href="${pageContext.request.contextPath}/admin/products" class="btn btn-dark m-2">Productos</a>
                        <a href="${pageContext.request.contextPath}/admin/suppliers" class="btn btn-warning m-2">Empresas</a>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../shared/footer.jsp"/>
    </body>
</html>
