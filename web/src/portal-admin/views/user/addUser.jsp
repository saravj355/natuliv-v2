<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .password-input{
        cursor:pointer;
    }
</style>
<!DOCTYPE html>
<body>
    <jsp:include page="../navbar.jsp" />
    <div class="container">
        <div class="row">
            <div class="card mx-auto w-50 mt-5 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center fz-100">Registrar Usuario</h5>
                </div>
                <div id="main_area" class="row-fluid">
                    <div class="span10 offset1">
                        <div id="formAlert" class="alert alert-danger hide d-none">  
                            <h5 class="animate__animated animate__headShake text-center validation">Porfavor llena todos los campos</h5>
                        </div>
                    </div>
                </div>
                <form action="${pageContext.servletContext.contextPath}/admin/users/add" name="form" method="post" class="p-4">
                    <div class="row">
                        <div class="col">
                            <div class="form-group">                                            
                                <label>Nombre:</label>
                                <input type="text" name="firstName" class="form-control">
                            </div> 
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label>Apellido:</label>
                                <input type="text" name="lastName" class="form-control">
                            </div>  
                        </div>
                    </div>
                    <div class="form-group">                                            
                        <label>Email:</label>
                        <input type="text" name="email" class="form-control">
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">    
                                <label>Género:</label>
                                <select class="custom-select" name="gender">
                                    <option value="" selected disabled>Selecciona</option>
                                    <option value="Femenino">Femenino</option>
                                    <option value="Masculino">Masculino</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">    
                                <label>Rol Usuario</label>
                                <select class="custom-select" name="userRole">
                                    <option value="" selected disabled>Selecciona</option>
                                    <option value="ADMIN">Administrador</option>
                                    <option value="SUPPORT">Soporte</option>
                                    <option value="USER">Usuario</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <div class="input-group">
                            <input type="password" class="form-control password input randomPassword" name="password" id="password">
                            <div class="input-group-append">                     
                                <span class="input-group-text"> <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password"></span>  </span>
                                <a class="input-group-text" data-clipboard-target="#password"> <i class="far fa-clipboard"></i>  </a>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Crear Usuario</button>
                    </div>
                </form>  
            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/src/portal-admin/src/js/inputValidation.js"></script>
    <script src="${pageContext.request.contextPath}/src/portal-admin/src/js/handlerInputFiles.js"></script>
    <script src="${pageContext.request.contextPath}/public/js/handlePasswordView.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.8/clipboard.min.js"></script>

</body>



