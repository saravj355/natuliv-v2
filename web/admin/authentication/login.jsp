<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../shared/head.jsp"/>
<style>
    .card{
        background:#cceefd;
        width:500px;
        margin-top:10%;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        -webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        -moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    .input-group{
        margin:20px 0;
    }
</style>
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

<jsp:include page="../../shared/scripts.jsp"/>
<script src="../src/js/app.js"></script>

