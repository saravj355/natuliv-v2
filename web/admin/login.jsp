<%-- 
    Document   : index
    Created on : Oct 24, 2020, 9:38:16 AM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../shared/head.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/style.css">

    <body>
        <!-- ***** login Administration ***** --->
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="card mx-auto justify-content-center">
                        <div class="card-header bg-light">
                            <h5 class="card-title mx-auto">ADMINISTRACIÓN</h5>
                            <small>Ingrese sus credenciales de administrador</small>
                        </div>
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/admin" method="POST">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="name" placeholder="Nombre de Usuario">   
                                </div>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input type="password" class="form-control" name="password" placeholder="Código Administrador">
                                </div>
                                <h5 class="errorMessage animate__animated animate__headShake">${errorMessage}</h5>
                                <input type="submit" class="btn btn-submit" value="Ingresar">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
        <jsp:include page="../shared/footer.jsp"/>
    </body>
</html>
