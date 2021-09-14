<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../navbar.jsp" />
<body>
    <div class="container">
        <div class="row">
            <div class="card mx-auto w-50 mt-4 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center">Editar Usuario</h5>
                </div>
                <div id="main_area" class="row-fluid">
                    <div class="span10 offset1">
                        <div id="formAlert" class="alert alert-danger hide d-none">  
                            <h5 class="animate__animated animate__headShake text-center validation">Porfavor llena todos los campos</h5>
                        </div>
                    </div>
                </div>
                <c:choose>
                    <c:when test="${ !empty sessionScope.user}">
                        <form action="${pageContext.servletContext.contextPath}/admin/users/edit" method="post" name="form" class="p-4">
                            <input name="userId" value="${user.getId()}" type="hidden">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">                                            
                                        <label >Nombre:</label>
                                        <input type="text" name="firstName" value="${user.getFirstName()}" class="form-control">
                                    </div> 
                                </div>
                                <div class="col">
                                    <div class="form-group">                                            
                                        <label>Apellido:</label>
                                        <input type="text" name="lastName" value="${user.getLastName()}" class="form-control">
                                    </div> 
                                </div> 
                            </div>
                            <div class="form-group">                                            
                                <label>Correo Electrónico:</label>
                                <input type="text" name="email" value="${user.getEmail()}" class="form-control">
                            </div> 
                            <div class="form-group">
                                <label for="genderSelect">Género</label>
                                <select class="form-control" id="genderSelect" name="gender" >
                                    <option hidden>${user.getGender()}</option>
                                    <option value="Femenino">Femenino</option>
                                    <option value="Masculino">Masculino</option>
                                </select>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </form>  
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/src/portal-admin/src/js/inputValidation.js"></script>
</body>
