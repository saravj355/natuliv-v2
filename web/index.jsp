<%-- 
    Document   : index
    Created on : Oct 15, 2020, 10:28:30 AM
    Author     : sarav
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="./shared/root_head.jsp"/>
<body>
    <!-- navbar component -->
    <jsp:include page="./shared/navbar.jsp"/>
    <!-- login component -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col">
                <div class="card-group">
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid brand-img mx-auto d-block" src="assets/img/logo.png">
                        </div>
                    </div>
                    <div class="card text-center">
                        <h5 class="card-title mx-auto">BIENVENIDO</h5>
                        <div class="card-body">
                            <form action="login" method="POST" class="form">
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                    </div>
                                    <input type="email" class="form-control email" name="email" id="email" placeholder="Correo Electrónico">
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                </div>
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input type="password" class="form-control password" name="password" id="password" placeholder="Contraseña">
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password"></span>  
                                        </span>
                                    </div>       
                                    
                                    <%= request%></p>
                                    <% 
                                          
//                                        String errorMessage = (String) request.getParameter("errorMessage");
//                                        if(errorMessage != null && errorMessage.isEmpty()){
                                    %>
                                        
                                        <div class="alert alert-danger errorMessage" role="alert">
                                           <h5 class="">${errorMessage}</h5>
                                        </div>
                                    <% // } %>                                      
                                </div>
                                <button type="submit" class="btn-submit">Iniciar Sesión</button>
                            </form>
                            <p>¿Aún no tienes cuenta? <a href="register.jsp">Regístrate</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <jsp:include page="./shared/footer.jsp"/>
</body>
</html>