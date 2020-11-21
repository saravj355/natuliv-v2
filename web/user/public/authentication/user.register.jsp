<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/user/public/authentication/user.register.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/user/public/authentication/auth.css">
<body>
    <jsp:include page="../../../shared/navbar.jsp"/>
    <div class="container animate__animated animate__bounceInRight">
        <div class="card text-center card-shadow m-4">
            <h1 class="card-title">Regístrate</h1>
            <form action="${pageContext.request.contextPath}/signup" method="POST" >
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" class="form-control input" name="name" placeholder="Nombre">   
                            <div class="line-box">
                                <div class="line"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <input type="text" class="form-control input" name="lastName" placeholder="Apellido">   
                            <div class="line-box">
                                <div class="line"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                            </div>
                            <input type="email" class="form-control input" name="email" placeholder="Correo Electrónico">   
                            <div class="line-box email">
                                <div class="line email"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <select class="custom-select" name="gender" required>
                            <option value="" selected>Género</option>
                            <option value="Femenino">Femenino</option>
                            <option value="Masculino">Masculino</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control input password" name="password" placeholder="Contraseña">   
                            <div class="line-box">
                                <div class="line"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <input type="password" class="form-control input password" name="confirmPassword" placeholder="Confirmar Contraseña">   
                            <div class="line-box">
                                <div class="line"></div>
                            </div>
                            <div class="input-group-append">                     
                                <span class="input-group-text"> <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password"></span>  </span>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 class="errorMessage animate__animated animate__shakeX">${errorMessage}</h5>
                <input type="submit" class="btn btn-submit" value="Crear Cuenta"/>
            </form>
        </div>
    </div>
    <jsp:include page="../../../shared/footer.jsp"/>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>
