<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="../shared/head.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/auth.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css">
<body>
    <jsp:include page="../shared/navbar.jsp"/>

    <!-- ******** login ********* -->
    <div class="container animate__animated animate__pulse">
        <div class="row justify-content-center">
            <div class="col mx-auto text-center">
                <div class="card-group card-shadow">
                    <div class="card">
                        <div class="card-body">
                            <div class="flip-container">
                                <div class="flip-this">
                                    <img class="img-fluid brand-img mx-auto d-block" src="${pageContext.request.contextPath}/assets/img/logo.png">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card text-center">
                        <h1 class="card-title mx-auto">BIENVENIDO</h1>
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/auth/login" method="POST" class="form">
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                    </div>
                                    <input type="email" class="form-control input" name="email" placeholder="Correo Electrónico">   
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
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
                                <h5 class="errorMessage animate__animated animate__headShake">${errorMessage}</h5>
                                <button type="submit" class="btn btn-submit">Iniciar Sesión</button>
                            </form>
                            <p>¿Aún no tienes cuenta? <a href="register.jsp">Regístrate</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    

    <jsp:include page="../shared/footer.jsp" />
</body>