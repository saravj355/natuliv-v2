<%-- 
    Document   : singUp
    Created on : Oct 15, 2020, 10:52:05 AM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="./shared/root_head.jsp"/>
    <link rel="stylesheet" href="./assets/css/register.css">
    <body>
        <jsp:include page="./shared/navbar.jsp"/>  
        <div class="container animate__animated animate__bounceInRight">
            <div class="card text-center">
                <img class="img-fluid brand-img mx-auto d-block" src="./assets/img/logo.png">
                <form action="signUp" method="POST">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <div class="input-line">
                            <input type="text" class="form-control" name="name" placeholder="Nombre">   
                            <span class="underline-animation"></span>
                        </div>
                        <div class="input-line">
                            <input type="text" class="form-control" name="lastName" placeholder="Apellido">   
                            <span class="underline-animation"></span>
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                        </div>
                        <div class="input-line">
                            <input type="email" class="form-control" name="email" placeholder="Correo Electrónico">   
                            <span class="underline-animation"></span>
                        </div>
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <div class="input-line">
                            <input type="password" class="form-control password" name="password" placeholder="Contraseña">   
                            <span class="underline-animation"></span>
                        </div>
                        <div class="input-line">
                            <input type="password" class="form-control password" name="confirmPassword" placeholder="Confirmar Contraseña">   
                            <span class="underline-animation"></span>
                        </div>
                        <div class="input-group-append">                     
                            <span class="input-group-text"> <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password"></span>  </span>
                        </div> 
                    </div>
                    <h5 class="errorMessage animate__animated animate__shakeX">${errorMessage}</h5>
                    <input type="submit" class="btn-submit" value="Crear Cuenta"/>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./shared/footer.jsp"/>  
</body>
</html>
