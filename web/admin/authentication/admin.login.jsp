<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../../shared/head.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/authentication/admin.login.css">
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
                        <div class="card-body bg-dark">
                            <form action="${pageContext.request.contextPath}/admin/login" method="POST">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="email" placeholder="Nombre de Usuario">   
                                </div>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input type="password" class="form-control password input" name="password" id="password" placeholder="Contraseña">
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                    <div class="input-group-append">                     
                                        <span class="input-group-text"> <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password"></span>  </span>
                                    </div>
                                </div>
                                <h5 class="errorMessage animate__animated animate__headShake text-white">${errorMessage}</h5>
                                <input type="submit" class="btn mt-4 btn-outline-light" value="Ingresar">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
        <jsp:include page="../../shared/footer.jsp"/>
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
    </body>
</html>
