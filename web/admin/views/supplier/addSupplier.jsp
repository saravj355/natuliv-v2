<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<body>
    <jsp:include page="../../imports/navbar/navbar.jsp" />
    <div class="container">
        <div class="row">
            <div class="card mx-auto w-50 mt-5 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center fz-100">Registrar Proveedor</h5>
                </div>
                <div id="main_area" class="row-fluid">
                    <div class="span10 offset1">
                        <div id="formAlert" class="alert alert-danger hide d-none">  
                            <h5 class="animate__animated animate__headShake text-center validation">Porfavor llena todos los campos</h5>
                        </div>
                    </div>
                </div>
                <form action="${pageContext.servletContext.contextPath}/admin/suppliers/add" name="form" method="post" class="p-4">
                    <div class="form-group">                                            
                        <label >Nombre Proveedor:</label>
                        <input type="text" name="name" class="form-control">
                    </div> 
                    <div class="form-group">
                        <label>Dirección:</label>
                        <input type="text" name="address" class="form-control">
                    </div>  
                    <div class="form-group">                                            
                        <label>Número de Contacto:</label>
                        <input type="text" name="contactNumber" class="form-control">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Registrar Proveedor</button>
                    </div>
                </form>  
            </div>
        </div>
        <a href="${pageContext.servletContext.contextPath}/admin/suppliers" class="text-dark"><i class="fas fa-arrow-circle-left arrow mr-1"></i>Volver</a>
    </div>
    <jsp:include page="../../../shared/scripts.jsp" />
    <script src="${pageContext.request.contextPath}/admin/src/js/validation.js"></script>
</body>



