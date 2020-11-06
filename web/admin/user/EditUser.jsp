<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">

<body>
    <jsp:include page="../navbar/navbar.jsp"/>
    <div class="container">
        <div class="row">
            <div class="card mx-auto w-50 mt-4 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center">Editar Usuario</h5>
                </div>
                <c:choose>
                    <c:when test="${ !empty sessionScope.user}">
                        <form action="${pageContext.servletContext.contextPath}/admin/products/edit" method="post" class="p-4">
                            <input name="userId" value="${user.getId()}" type="hidden">
                            <div class="form-group">                                            
                                <label >Nombre:</label>
                                <input type="text" name="name" value="${user.getName()}" class="form-control">
                            </div> 
                            <div class="form-group">                                            
                                <label>Apellido:</label>
                                <input type="text" name="lastName" value="${user.getLastName()}" class="form-control">
                            </div> 
                            <div class="form-group">                                            
                                <label>Correo Electrónico:</label>
                                <input type="text" name="email" value="${user.getEmail()}" class="form-control">
                            </div> 
                            <div class="form-group">                                            
                                <label>Género:</label>
                                <select class="custom-select" name="gender" required>
                                    <option value="">${user.getGender()}</option>
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
        <a href="${pageContext.servletContext.contextPath}/admin/users" class="text-dark"><i class="fas fa-arrow-circle-left arrow mr-1"></i>Volver</a>
    </div>
    <jsp:include page="../../shared/footer.jsp"/>
</body>
